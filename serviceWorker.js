self.addEventListener("push", (event) => {
    const notification = event.data.json();

    event.waitUntil(
        self.registration.showNotification(notification.title, {
            body: notification.body,
            icon: notification.icon,
            data: { url: notification.url } // Pass URL in data
        })
    );
});

self.addEventListener("notificationclick", (event) => {
    event.notification.close(); // Close the notification

    const url = event.notification.data.url; // Access URL from data

    event.waitUntil(
        clients.matchAll({ type: 'window' }).then((clientList) => {
            for (let client of clientList) {
                if (client.url === url && 'focus' in client) {
                    return client.focus(); // Focus the existing window
                }
            }
            // Open a new window if no client matches
            return clients.openWindow(url);
        })
    );
});


