<?php
header('Content-Type: application/json');
require_once 'db.php';

try {

    $stmt = $pdo->prepare("
        SELECT id, event_name, event_type, venue, event_datetime, event_description, event_thumbnail_url
        FROM event
    ");
    $stmt->execute();

    $events = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        'status' => 'success',
        'count' => count($events),
        'data' => $events
    ], JSON_PRETTY_PRINT);

} catch (PDOException $e) {
    echo json_encode([
        'status' => 'error',
        'message' => $e->getMessage()
    ]);
}
?>
