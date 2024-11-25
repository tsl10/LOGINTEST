<?php

include 'inc/header.php';
Session::CheckSession();

// Include database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "login";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch uploaded CVs and corresponding ranks from the database
$sql = "SELECT cvs.id, cvs.email, cvs.filename, cvs.uploaded_at, users.rank 
        FROM cvs 
        LEFT JOIN users ON cvs.email = users.email";

$result = $conn->query($sql);

// Check if the query was successful
if ($result === false) {
    die("Error: " . $conn->error);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CV List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Uploaded CVs</h2>
        
        <?php if ($result->num_rows > 0): ?>
            <table id="cvTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>Filename</th>
                        <th>Uploaded At</th>
                        <th>Rank</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($row = $result->fetch_assoc()): ?>
                        <tr>
                            <td><?= htmlspecialchars($row['email']) ?></td>
                            <td><?= htmlspecialchars($row['filename']) ?></td>
                            <td><?= htmlspecialchars($row['uploaded_at']) ?></td>
                            <td><?= htmlspecialchars($row['rank'] ?? 'N/A') ?></td>
                            <td><a href="uploads/<?= htmlspecialchars($row['filename']) ?>" target="_blank" class="btn btn-primary btn-sm">View</a></td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        <?php else: ?>
            <div class="alert alert-warning">No CVs found.</div>
        <?php endif; ?>

        <?php $conn->close(); ?>
    </div>

    <script>
        $(document).ready(function() {
            $('#cvTable').DataTable();
        });
    </script>
</body>
</html>
