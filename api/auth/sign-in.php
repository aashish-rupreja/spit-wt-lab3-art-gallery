<?php
require '../db.php';
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
header("Content-Type: application/json");

$raw = file_get_contents("php://input");
file_put_contents("/tmp/signin_log.txt", $raw); // just to inspect input
$input = json_decode($raw, true);

$data = json_decode(file_get_contents('php://input'), true);

if (!$data || !isset($data['email'], $data['password'])) {
    http_response_code(400);
    echo json_encode(["error" => "Invalid request"]);
    exit;
}

$email = trim($data['email']);
$password = $data['password'];

$stmt = $conn->prepare("SELECT id, name, email, password FROM users WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    echo json_encode(["success" => false, "message" => "Invalid credentials."]);
    exit;
}

$user = $result->fetch_assoc();

if (!password_verify($password, $user['password'])) {
    echo json_encode(["success" => false, "message" => "Invalid credentials."]);
    exit;
}

unset($user['password']);

echo json_encode([
    "success" => true,
    "user" => $user
]);
