<?php

$games = [
	["Call of Duty", "Shooter", 59.95],
	["Rocket League", "Sport", 19.95],
	["Assassins Creed", "RP", 49.95]
];


$gemiddeld = 0;
for ($i = 0, $j = count($games); $i < $j; $i++) {
    $gemiddeld += $games[$i][2];
    $kar .= $games[$i][0];
}


$gemiddeld = $gemiddeld / 3;
$gemiddeld = number_format($gemiddeld, 2, '.', '');

$kar = strlen($kar) / 3;
$kar = number_format($kar, 0, '.', '');


echo "gemiddelde  prijs: €" . $gemiddeld . PHP_EOL;
echo "gemiddelde  lengte van de title: " . $kar . " karakters";

?>