<html>
<head>
<title>HW6_KrishBedi</title>
<meta http-equiv="refresh" content="21600">
</head>
<body>
<?php
$conn = new mysqli("127.0.0.1", "root", "password", "weather");

$user_ip = $_SERVER['REMOTE_ADDR'];
$sql = "SELECT * FROM user WHERE ip = '$user_ip'";
$result = $conn->query($sql);
if ($result->num_rows == 0) {
    $sql = "INSERT INTO user (ip, prefState) VALUES ('$user_ip', 'NY')"; // default state set to NY
    $conn->query($sql);
}

$sql = "SELECT DISTINCT state FROM weatherInfo";
$result = $conn->query($sql);
echo "<h2>Select preferred state.</h2>";
while ($row = $result->fetch_assoc()) {
    $state = $row['state'];
    echo "<form method='post'>";
    echo "<button type='submit' name='prefState' value='$state'>$state</button>";
    echo "</form>";
}

if (isset($_POST['prefState'])) { //update preferred state and content
    $prefState = $_POST['prefState'];
    $sql = "UPDATE user SET prefState = '$prefState' WHERE ip = '$user_ip'";
    $conn->query($sql);
}

$sql = "SELECT prefState FROM user WHERE ip = '$user_ip'";
$result = $conn->query($sql);
$prefState = "";
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $prefState = $row['prefState'];
}
echo "<h2>Weather for " . ($prefState ? $prefState : "NY") . " <h4>--- Current Preferred State ---</h4></h2>";

$sql = "SELECT * FROM weatherInfo WHERE state = (SELECT prefState FROM user WHERE ip = '$user_ip') ORDER BY date DESC LIMIT 9";
$result = $conn->query($sql);
echo "<table>";
echo "<tr><th>City</th><th>Period</th><th>Long Desc</th><th>Short Desc</th><th>Temp</th><th>Date</th></tr>";
while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row['city'] . "</td>";
    echo "<td>" . $row['period'] . "</td>";
    echo "<td>" . $row['longDesc'] . "</td>";
    echo "<td>" . $row['shortDesc'] . "</td>";
    echo "<td>" . $row['temp'] . "</td>";
    echo "<td>" . $row['date'] . "</td>";
    echo "</tr>";
}
echo "</table>";

$sql = "SELECT DISTINCT state FROM weatherInfo WHERE state != (SELECT prefState FROM user WHERE ip = '$user_ip')";
$result = $conn->query($sql);
while ($row = $result->fetch_assoc()) {
    $state = $row['state'];
    $sql = "SELECT * FROM weatherInfo WHERE state = '$state' ORDER BY date DESC LIMIT 9";
    $result2 = $conn->query($sql);
    echo "<h2>Weather for $state</h2>";
    echo "<table>";
    echo "<tr><th>City</th><th>Period</th><th>Long Desc</th><th>Short Desc</th><th>Temp</th><th>Date</th></tr>";
    while ($row2 = $result2->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row2['city'] . "</td>";
        echo "<td>" . $row2['period'] . "</td>";
        echo "<td>" . $row2['longDesc'] . "</td>";
        echo "<td>" . $row2['shortDesc'] . "</td>";
        echo "<td>" . $row2['temp'] . "</td>";
        echo "<td>" . $row2['date'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
}

$conn->close();
?>
</body>
</html>
