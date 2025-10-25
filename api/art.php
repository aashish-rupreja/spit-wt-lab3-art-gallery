<?php
header('Content-Type: application/json');
require_once 'db.php';

$category_name = isset($_GET['category']) ? trim($_GET['category']) : '';

if (!$category_name) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid category name']);
    exit;
}

try {
    $stmt = $pdo->prepare("
        SELECT a.id, a.art_name, a.artist_name, a.year, a.art_image, c.id AS category_id
        FROM art a
        INNER JOIN art_category ac ON a.id = ac.art_id
        INNER JOIN category c ON ac.category_id = c.id
        WHERE c.name = :cat_name
        ORDER BY a.art_name;
    ");
    $stmt->execute(['cat_name' => $category_name]);
    $artPieces = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($artPieces);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}