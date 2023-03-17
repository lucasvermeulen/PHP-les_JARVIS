<?php

$num = readline("vul een getal in:" . PHP_EOL);
$num = $num % 2;

if ($num ==  1) {
    echo "een oneven getal";
} else {
    echo "een even getal";
}

?>