<?php
header('Content-Type: application/json');
require_once 'db.php';

$art_name = isset($_GET['name']) ? $_GET['name'] : 0;

if (!$art_name) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid art name']);
    exit;
}

try {
    $stmt = $pdo->prepare("SELECT * FROM art WHERE art_name = :name");
    $stmt->execute(['name' => $art_name]);
    $art = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$art) {
        http_response_code(404);
        echo json_encode(['error' => 'Art piece not found']);
        exit;
    }

    echo json_encode($art);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}