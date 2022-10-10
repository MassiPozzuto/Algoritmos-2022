<?php

$conn = mysqli_connect('localhost', 'root', '', 'fooder');
define('CANT_REG_PAG', 3);
if (!$conn) {
    die('Error de Conexión (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
}

$page = (isset($_GET['page']) || $_GET['page'] < 1) ? $_GET['page'] : 1;

$sqlUsers = "SELECT * FROM users WHERE deleted_at IS NULL";
$resUsers = mysqli_query($conn, $sqlUsers);
if (!$resUsers) {
    die('Error de Consulta' . mysqli_error($conn));
}
$amt_page_total = ceil(mysqli_num_rows($resUsers) / CANT_REG_PAG);


$sqlUsers .= " LIMIT " . CANT_REG_PAG * ($page - 1) . ", " . CANT_REG_PAG;
$resUsers = mysqli_query($conn, $sqlUsers);
if (!$resUsers) {
    die('Error de Consulta' . mysqli_error($conn));
}
$rowUsers = mysqli_fetch_all($resUsers, MYSQLI_ASSOC);
$rowUsers['amt_page_total'] = $amt_page_total;

print_r(json_encode($rowUsers));
?>