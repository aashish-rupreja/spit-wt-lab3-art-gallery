<?php
header('Content-Type: application/json');

require_once 'db.php';

$input = json_decode(file_get_contents("php://input"), true);

if (!$input || empty($input["name"]) || empty($input["email"]) || empty($input["query"])) {
    echo json_encode(["status" => "error", "message" => "Missing required fields"]);
    exit;
}

$name = trim($input["name"]);
$email = trim($input["email"]);
$phone = trim($input["phone"] ?? "");
$message = trim($input["query"]);

try {

    $nameParts = explode(" ", $name, 2);
    $firstname = $nameParts[0];
    $lastname = $nameParts[1] ?? "";

    $stmt = $pdo->prepare("SELECT id FROM user WHERE email_address = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        $userId = $user["id"];
    } else {
        $insertUser = $pdo->prepare("
            INSERT INTO user (firstname, lastname, phone_number, email_address, password)
            VALUES (?, ?, ?, ?, NULL)
        ");
        $insertUser->execute([$firstname, $lastname, $phone, $email]);
        $userId = $pdo->lastInsertId();
    }

    $insertQuery = $pdo->prepare("
        INSERT INTO queries (user_id, query_message)
        VALUES (?, ?)
    ");
    $insertQuery->execute([$userId, $message]);

    echo json_encode(["status" => "success", "message" => "Query saved successfully"]);

} catch (PDOException $e) {
    echo json_encode(["status" => "error", "message" => $e->getMessage()]);
}
?>
