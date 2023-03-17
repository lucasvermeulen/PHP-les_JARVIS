<?php

$operatie = readline('welke operatie wil je uitvoeren? (+, -, %)' . PHP_EOL);
$nr1 = readline('eerste getal?' . PHP_EOL);
$nr2 = readline('tweede getal?' . PHP_EOL);
if (is_numeric($nr1) != 1) {
    echo "$nr1 . is geen getal";
    exit;
}
if (is_numeric($nr2) != 1) {
    echo "$nr2  is geen getal";
    exit;
}

if ($operatie == "+") {
    $ant = $nr1 + $nr2;
} elseif ($operatie == "%") {
    $ant = $nr1 % $nr2;
} elseif ($operatie == "-") {
    $ant = $nr1 - $nr2;
} else {
    echo "$operatie  is geen geldige operatie";
    exit;
}

echo "uw resultaat is $ant";
