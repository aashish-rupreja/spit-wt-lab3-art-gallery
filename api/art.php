<?php
header('Content-Type: application/json');
require_once 'db.php';

$category_name = isset($_GET['category']) ? trim($_GET['category']) : '';
$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 0;

if (!$category_name) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid category name']);
    exit;
}

try {
    $sql = "
        SELECT a.id, a.art_name, a.artist_name, a.year, a.art_image, c.id AS category_id
        FROM art a
        INNER JOIN art_category ac ON a.id = ac.art_id
        INNER JOIN category c ON ac.category_id = c.id
        WHERE c.name = :cat_name
        ORDER BY a.art_name
    ";

    if ($limit > 0) {
        $sql .= " LIMIT :limit";
    }

    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':cat_name', $category_name, PDO::PARAM_STR);
    if ($limit > 0) {
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
    }

    $stmt->execute();
    $artPieces = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($artPieces);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
