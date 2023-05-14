<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Repertuar</title>
    <link rel="stylesheet" href="repertuar.css">
</head>
<body>
<header>
    <h1>Kino</h1>
    <nav>
        <ul>
            <li><a href="kino.php">Strona główna</a></li>
            <li><a href="repertuar.php">Repertuar</a></li>
            <li><a href="kontakt.html">Kontakt</a></li>
            <li><a href="kwerendy.php">Kwerendy</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Repertuar</h2>

    <?php
    // połączenie z bazą danych
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kino";
    $conn = new mysqli($servername, $username, $password, $dbname);

    // sprawdzenie połączenia
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // pobranie danych z bazy
    $sql = "SELECT * FROM film";
    $result = $conn->query($sql);

    // wyświetlenie danych w tabeli
    if ($result->num_rows > 0) {
        echo "<table>";
        echo "<tr><th>Tytuł</th><th>Reżyser</th><th>Gatunek</th><th>Czas trwania</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["title"]. "</td><td>" . $row["rezyser"]. "</td><td>" . $row["gatunek"]. "</td><td>" . $row["czas_trwania"]. " min</td></tr>";
        }
        echo "</table>";
    } else {
        echo "Brak filmów w repertuarze.";
    }

    // zamknięcie połączenia z bazą danych
    $conn->close();
    ?>

</main>

<footer>
    <p>&copy; 2023 Kino. Wszelkie prawa zastrzeżone.</p>
</footer>
</body>
</html>
