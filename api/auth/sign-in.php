<?php
require '../db.php';
header("Content-Type: application/json");

$data = json_decode(file_get_contents('php://input'), true);

if (!isset($data['email'], $data['password'])) {
    echo json_encode(["success" => false, "message" => "Missing email or password."]);
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
