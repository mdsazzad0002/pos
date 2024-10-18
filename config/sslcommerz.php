<?php

// SSLCommerz configuration


return [
	'apiUrl' => [
		'make_payment' => "/gwprocess/v4/api.php",
		'transaction_status' => "/validator/api/merchantTransIDvalidationAPI.php",
		'order_validate' => "/validator/api/validationserverAPI.php",
		'refund_payment' => "/validator/api/merchantTransIDvalidationAPI.php",
		'refund_status' => "/validator/api/merchantTransIDvalidationAPI.php",
	],

	'success_url' => '/sslcommerz/success',
	'failed_url' => '/sslcommerz/fail',
	'cancel_url' => '/sslcommerz/cancel',
	'ipn_url' => '/sslcommerz/ipn',
];
