<!DOCTYPE html>
<html>
<head>
    <title>Kino</title>
    <link rel="stylesheet" type="text/css" href="styl.css">
</head>
<body>
<header>
    <h1>Kino</h1>
    <nav>
        <ul>
            <li><a href="repertuar.php">Repertuar</a></li>
            <li><a href="kontakt.html">Kontakt</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Repertuar wraz z opisami filmów</h2>
    <section>
        <?php
        // Połączenie z bazą danych
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "kino";
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Sprawdzenie połączenia z bazą danych
        if ($conn->connect_error) {
            die("Nie udało się połączyć z bazą danych: " . $conn->connect_error);
        }

        // Pobranie informacji o filmach z bazy danych
        $sql = "SELECT * FROM film";
        $result = $conn->query($sql);

        // Wyświetlenie filmów
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<article>";
                echo "<h3>" . $row["title"] . "</h3>";
                echo "<p>" . $row["opis"] . "</p>";
                echo "<ul>";
                echo "<li><strong>Rok produkcji:</strong> " . $row["rok_prod"] . "</li>";
                echo "</ul>";
                echo "</article>";
            }
        } else {
            echo "Brak filmów w repertuarze.";
        }

        // Zakończenie połączenia z bazą danych
        $conn->close();
        ?>
    </section>
</main>

<footer>
    <p>&copy; 2023 Kino. Wszelkie prawa zastrzeżone.</p>
</footer>
</body>
</html>
