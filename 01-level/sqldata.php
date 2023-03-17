<?php

//stap 1 initilaize
define('HOST', 'localhost');
define('DATABASE', 'transportbedrijf');
define('USER', 'root');
define('PASSWORD', '');

//stap 2
try{
    $conn = mysqli_connect(HOST, USER, PASSWORD, DATABASE);
    mysqli_set_charset($conn, 'utf8');
    echo'connectie geslaagd!' . PHP_EOL; 

} catch (mysqli_sql_exception $e) {
    echo $e-> getMessage();
    exit;
}

$query = "SELECT naam, cp, straat, concat(straat, ' ' , huisnummer, coalesce(toevoeging, ' ' )) AS adres, postcode, plaats, telefoon From klant
    Where plaats = 'Amstelveen'
    Order BY naam ASC;";

//stap 4 uitvoeren
$result = mysqli_query($conn, $query);

//stap 5 data op scherm
while ($row = mysqli_fetch_assoc( $result)) {
    echo $row['naam'] . ' ' . $row['adres'] . PHP_EOL;

}
//stap 6 sluiten data base

mysqli_close($conn);


?>