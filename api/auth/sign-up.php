<?php
require '../db.php';
header('Content-Type: application/json');

$data = json_decode(file_get_contents('php://input'), true);

if (!$data) {
    echo json_encode(["success" => false, "message" => "Invalid input."]);
    exit;
}

$firstname = $data['firstname'] ?? '';
$lastname = $data['lastname'] ?? '';
$phone = $data['phone'] ?? '';
$email = $data['email'] ?? '';
$password = password_hash($data['password'] ?? '', PASSWORD_BCRYPT);

try {
    $stmt = $pdo->prepare("INSERT INTO user (firstname, lastname, phone_number, email_address, password)
                           VALUES (?, ?, ?, ?, ?)");
    $stmt->execute([$firstname, $lastname, $phone, $email, $password]);
    echo json_encode(["message" => "Registration successful"]);
} catch (PDOException $e) {
    echo json_encode(["error" => $e->getMessage()]);
}
