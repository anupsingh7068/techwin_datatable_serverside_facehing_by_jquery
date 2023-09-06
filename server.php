<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "your_database";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$columns = array(
    array('db' => 'id', 'dt' => 0),
    array('db' => 'name', 'dt' => 1),
    array('db' => 'email', 'dt' => 2),
    array('db' => 'phone', 'dt' => 3)
);

$sql = "SELECT id, name, email, phone FROM your_table";


$result = mysqli_query($conn, $sql);


$data = array();
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
    
}

$totalRecords = count($data);

$totalFiltered = $totalRecords;

if (!empty($_POST['search']['value'])) {

    $search = $_POST['search']['value'];
    $filteredData = array();

    foreach ($data as $row) {
       
        if (stripos($row['id'], $search) !== false ||
            stripos($row['name'], $search) !== false ||
            stripos($row['email'], $search) !== false ||
            stripos($row['phone'], $search) !== false) {
            $filteredData[] = $row;
 
        }
    }

    $totalFiltered = count($filteredData);

    $data = $filteredData;
}

$start = intval($_POST['start']);

$length = intval($_POST['length']);

$data = array_slice($data, $start, $length);
$response = array(
    "draw" => isset($_POST['draw']) ? intval($_POST['draw']) : 0,
    "recordsTotal" => $totalRecords,
    "recordsFiltered" => $totalFiltered,
    "data" => $data
);

echo json_encode($response);

mysqli_close($conn);
?>
