<?php
include 'class.db.php';
include 'config.php';


$name = $_POST['name'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$comment = $_POST['comment'];
$address = '';
$data_array = ['street', 'home', 'part', 'appt', 'floor'];
foreach ($_POST as $fields => $val) {
    if ($val && in_array($fields, $data_array)) {
        $address .= $val . ',';
    }
}
$address = substr($address, 0, -1);
$db = Db::getInstance();
$q = "SELECT `id`, `name`, `email`, `phone`, `address` FROM `clients` WHERE `email` = :email;";
$ret = $db->findOne($q, array(
    'email' => $email
), __FILE__);
if ($ret) {
    $clnt_id = $ret['id'];
    $q = "INSERT INTO `orders`(`clnt_id`, `comment`) VALUES ($clnt_id,:comment)";
    $ret = $db->exec($q, array(
        'comment' => $comment
    ), __FILE__);

    $order_id = ($db->lastinsertId());
} else {
    $q = "INSERT INTO `clients`(`email`,`name`, `phone`, `address`) VALUES (:email,:name,:phone,:address);";
    $ret = $db->exec($q, array(
        'email' => $email,
        'name' => $name,
        'phone' => $phone,
        'address' => $address,
    ), __FILE__);
    $clnt_id = ($db->lastinsertId());
    $q = "INSERT INTO `orders`(`clnt_id`, `comment`) VALUES ($clnt_id,:comment)";
    $ret = $db->exec($q, array(
        'comment' => $comment
    ), __FILE__);
    $order_id = ($db->lastinsertId());
}

$q = "SELECT count(`id`)as kol FROM `orders` WHERE `clnt_id` = $clnt_id;";
$ret = $db->findOne($q, [], __FILE__);


echo "Спасибо, ваш заказ будет доставлен по адресу: " . $address . "<br>" .
    "Номер вашего заказа: " . $order_id . "<br>" .
    "Это ваш " . $ret['kol'] . " заказ!";
