<?php
header('Content-Type: application/json');
require_once 'db.php';

try {
    // Fetch all artworks sorted by year
    $stmt = $pdo->query("
        SELECT art_name, artist_name, year, art_image
        FROM art
        WHERE year IS NOT NULL
        ORDER BY year ASC
    ");
    $arts = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Group by century
    $timeline = [];
    foreach ($arts as $art) {
        $century = ceil($art['year'] / 100) . 'th Century';
        if (!isset($timeline[$century])) {
            $timeline[$century] = [];
        }
        if (count($timeline[$century]) < 3) { // Limit to 3 per century
            $timeline[$century][] = $art;
        }
    }

    $formatted = [];
    foreach ($timeline as $century => $artworks) {
        $formatted[] = [
            'century' => $century,
            'artworks' => $artworks
        ];
    }

    echo json_encode($formatted);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
?>
