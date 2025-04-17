<?php
$defaultConfig = (new \Mpdf\Config\ConfigVariables())->getDefaults();
$fontDirs = $defaultConfig['fontDir'];

$defaultFontConfig = (new \Mpdf\Config\FontVariables())->getDefaults();
$fontData = $defaultFontConfig['fontdata'];

$mpdf = new \Mpdf\Mpdf([
    'fontDir' => array_merge($fontDirs, [__DIR__ . '/custom-fonts']),
    'fontdata' => $fontData + [
        'solaimanlipi' => [
            'R' => 'SolaimanLipi.ttf',
        ]
    ],
    'default_font' => 'solaimanlipi'
]);
