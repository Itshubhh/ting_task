<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ting_task";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$category = isset($_GET['category']) ? $_GET['category'] : 'all';

if ($category == 'all') {
    $sql = "SELECT * FROM financial_articles"; 
} else {
    $sql = "SELECT * FROM financial_articles WHERE category = ?";
}

$stmt = $conn->prepare($sql);

if ($category != 'all') {
    $stmt->bind_param('s', $category); 
}

$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $imagePath = !empty($row['image_path']) ? 'assets/images/' . $row['image_path'] : '';
        
        echo '<div class="col-md-3 mb-4">';
        echo '<div class="blog-card">';
        echo '<a href="" style="text-decoration: none;">';
        echo '<div class="field-wrapper">';
        echo '<div class="box-img" style="background-image: url(\'' . $imagePath . '\');"></div>';
        echo '<div class="blog-text">';
        echo '<h6>' . $row['category'] . '</h6>';
        echo '<h5>' . $row['publish_date'] . '</h5>';
        echo '<h2>' . $row['title'] . '</h2>';
        echo '<p>' . $row['description'] . '</p>';
        echo '<a href="" class="btn-read-more">Read More</a>';
        echo '</div></div></a>';
        echo '<div class="icon-time-section">';
        echo '<div class="time-section">';
        echo '<span>Read Time: ' . $row['read_time'] . '</span>';
        echo '</div>'; 
        echo '<div class="share-icon">';
        echo '<a href="" class="twitter" target="_blank"><i class="fab fa-twitter"></i></a>';
        echo '<a href="" class="linkedin" target="_blank"><i class="fab fa-linkedin-in"></i></a>';
        echo '<a href="" class="clipboard"><i class="fas fa-link link-share"></i></a>';
        echo '</div></div></div></div>';
    }
} else {
    echo "<p>No articles found.</p>";
}

$stmt->close();
$conn->close();
?>
