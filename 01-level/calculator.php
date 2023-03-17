<?php

$actie = readline("+, -, of %: ");
$eerste = readline("eerste getal: ");
$tweede = readline("tweede getal: ");
if (is_numeric($eerste) != 1) {
    echo "geen getal";
    exit;
} elseif (is_numeric($tweede) != 1) {
    echo "geen getal";
    exit;
}
if ($actie == '+') {
    echo $eerste + $tweede;
} elseif ($actie == '-') {
    echo $eerste - $tweede;
} elseif ($actie == '%') {
    echo $eerste % $tweede;
} else {
    echo "'" . $actie . "' is geen geldige operatie";
    exit;
} if (is_numeric($eerste) != 1) {
    echo "geen getal";
    exit;
} elseif (is_numeric($tweede) != 1) {
    echo "geen getal";
    exit;
}
?>
