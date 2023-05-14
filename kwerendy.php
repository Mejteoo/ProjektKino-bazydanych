<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Zapytanie SQL</title>
    <link rel="stylesheet" href="kwerendy.css">
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
    <h2>Zapytanie SQL</h2>
    <form method="post">
        <label>
            Wpisz zapytanie SQL:
            <textarea name="query" cols="30" rows="10"></textarea>
        </label>
        <button type="submit">Wyślij</button>
    </form>
    <?php
    // pobierz zapytanie SQL z formularza
    $query = $_POST['query'];
    if (!empty($query)) {
        // połącz z bazą danych
        $host = "localhost";
        $user = "id17607196_root";
        $password = "wX#y^4c42";
        $database = "id17607196_kino";

        $connection = mysqli_connect($host, $user, $password, $database);
        if (!$connection) {
            die('Błąd połączenia: ' . mysqli_connect_error());
        }

        // wykonaj zapytanie SQL i wyświetl wynik oraz zapytanie
        $result = mysqli_query($connection, $query);
        echo '<div class="query-info">';
        echo '<p>Użyte zapytanie:</p>';
        echo '<pre>' . htmlspecialchars($query) . '</pre>';
        echo '</div>';
        if (mysqli_num_rows($result) > 0) {
            echo '<h3>Wynik:</h3>';
            echo '<table class="result-table">';
            // Pobierz nagłówki kolumn
            $header = array_keys(mysqli_fetch_assoc($result));
            // Wyświetl nagłówki kolumn
            echo '<tr>';
            foreach ($header as $col) {
                echo '<th>' . htmlspecialchars($col) . '</th>';
            }
            echo '</tr>';
            // Wyświetl dane
            mysqli_data_seek($result, 0);
            while ($row = mysqli_fetch_assoc($result)) {
                echo '<tr>';
                foreach ($row as $value) {
                    echo '<td>' . htmlspecialchars($value) . '</td>';
                }
                echo '</tr>';
            }
            echo '</table>';
        } else {
            echo '<p>Brak wyników.</p>';
        }


        // zamknij połączenie z bazą danych
        mysqli_close($connection);
    }
    ?>
</main>
<footer>
    <p>&copy; 2023 Kino. Wszelkie prawa zastrzeżone.</p>
</footer>
</body>
</html>
