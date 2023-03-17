<?php

    include './sqldata.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>klant</title>
</head>
<body>
    <?php
    $query = "SELECT naam, cp, straat, concat(straat, ' ' , huisnummer, coalesce(toevoeging, ' ' )) AS adres, postcode, plaats, telefoon From klant
    WHERE id=309 OR id = 349";
    $result = mysqli_query($conn, $query);
    $tabel = 
    '<table>
        <tr>
            <th>klant</th>
            <th>Adres</th>
            <th>woonplaats</th>
        </tr>' . PHP_EOL;
    while ($row = mysqli_fetch_assoc( $result)) {
        $tabel += 
        '<tr>
            <td>' . $row['naam'] .  '</td>
            <td>' . $row['adres'] .  '</td>
            <td>' . $row['plaats'] .  '</td>
        <tr/>';
    }
    $tabel .= '</table>'
    
?>

</body>
</html>