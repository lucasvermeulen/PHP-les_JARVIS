<?php

echo("Hoe oud ben jij". PHP_EOL);

$antwoord = readline();

if ($antwoord >= 16.5) {
    echo("je mag beginnen met rijden!");
} else {
    echo("helaas, je mag nog niet beginnen met rijden!");
}

?>