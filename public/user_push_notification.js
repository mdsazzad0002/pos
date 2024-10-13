document.addEventListener('DOMContentLoaded', () => {
    const applicationServerKey = document.querySelector('#notification_dynamic_pubic').value;
    const app_url = document.querySelector('#local_url_fcm').value;

    if (!('serviceWorker' in navigator)) {
        console.warn('Service workers are not supported by this browser');
        return;
    }

    if (!('PushManager' in window)) {
        console.warn('Push notifications are not supported by this browser');
        return;
    }

    if (!('showNotification' in ServiceWorkerRegistration.prototype)) {
        console.warn('Notifications are not supported by this browser');
        return;
    }

    if (Notification.permission === 'denied') {
        console.warn('Notifications are denied by the user');
        return;
    }

    navigator.serviceWorker.register(app_url + '/serviceWorker.js').then(
        () => {
            console.log('[SW] Service worker has been registered');
            push_subscribe(); // Automatically subscribe
        },
        e => {
            console.error('[SW] Service worker registration failed', e);
        }
    );

    function urlBase64ToUint8Array(base64String) {
        const padding = '='.repeat((4 - (base64String.length % 4)) % 4);
        const base64 = (base64String + padding).replace(/\-/g, '+').replace(/_/g, '/');
        const rawData = window.atob(base64);
        const outputArray = new Uint8Array(rawData.length);

        for (let i = 0; i < rawData.length; ++i) {
            outputArray[i] = rawData.charCodeAt(i);
        }
        return outputArray;
    }

    function checkNotificationPermission() {
        return new Promise((resolve, reject) => {
            if (Notification.permission === 'denied') {
                return reject(new Error('Push messages are blocked.'));
            }

            if (Notification.permission === 'granted') {
                return resolve();
            }

            if (Notification.permission === 'default') {
                return Notification.requestPermission().then(result => {
                    if (result !== 'granted') {
                        reject(new Error('Bad permission result'));
                    } else {
                        resolve();
                    }
                });
            }

            return reject(new Error('Unknown permission'));
        });
    }

    function push_subscribe() {
        return checkNotificationPermission()
            .then(() => navigator.serviceWorker.ready)
            .then(serviceWorkerRegistration =>
                serviceWorkerRegistration.pushManager.subscribe({
                    userVisibleOnly: true,
                    applicationServerKey: urlBase64ToUint8Array(applicationServerKey),
                })
            )
            .then(subscription => {
                // Send subscription to your server
                return push_sendSubscriptionToServer(subscription, 'POST');
            })
            .catch(e => {
                console.error('Error subscribing to push notifications', e);
            });
    }

    function push_sendSubscriptionToServer(subscription, method) {
        const key = subscription.getKey('p256dh');
        const token = subscription.getKey('auth');
        const contentEncoding = (PushManager.supportedContentEncodings || ['aesgcm'])[0];

        return fetch(app_url + '/admin/fcm_notification/subscribe/', {
            method,
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                endpoint: subscription.endpoint,
                publicKey: key ? btoa(String.fromCharCode.apply(null, new Uint8Array(key))) : null,
                authToken: token ? btoa(String.fromCharCode.apply(null, new Uint8Array(token))) : null,
                contentEncoding,
            }),
        });
    }
});
