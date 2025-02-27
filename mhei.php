


<link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.min.css">
<script src="assets/js/jquery.dataTables.min.js"></script>

    <div class="pagetitle">
      <h1>MHEI</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Table</li>
          <li class="breadcrumb-item active">MHEI</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
            
              <h5 class="card-title">MHEI List</h5>
              <a href="export_users.php" type="button" class="btn btn-primary" ><i class="ri-file-excel-2-line"></i> Export</a>
              <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#import_user"><i class="bx bxs-file-import"></i> Import</button>
              
              <div class="modal fade" data-bs-backdrop='static' id="import_user" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Import MHEI</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="import_users.php" method="POST" enctype="multipart/form-data">  
                    <div class="modal-body">
                        
                    <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Import File</label>
                    <div class="col-sm-10">
                        <input type="file" class="form-control" id="evidence" name="evidence" required>
                    </div>
                    </div>

                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-success">Import</button>
                    </div>
                    </form>
                  </div>
                </div>
              </div>

              <div class="table-responsive" style="margin-top:2%;">

                <table class="hover cell-border" id="mheiTable">
  <thead>
    <tr>
      <th>No</th>
      <th>logo</th>
      <th>MHEI Institutional Code</th>
      <th>MHEI Name</th>
      <th>MHEI Type</th>
      <th>Address</th>
      <th>Email Address</th>
      <th>Contact Number</th>
      <th>Region</th>
      <th>Status</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
  <?php
include 'includes/connection.php';

// Execute a query to retrieve data
$query_mhei = "SELECT * FROM mheis";
$result_mhei = mysqli_query($link, $query_mhei);

// Initialize a counter variable
$i = 1;

// Check if the query was successful
if ($result_mhei) {
    // Loop through the result set and generate the table rows
    while ($row = mysqli_fetch_assoc($result_mhei)) {
        echo "<tr>";
        echo "<td>{$i}</td>"; 
        $logo = !empty($row['logo']) ? $row['logo'] : 'mhei_logo/default.jpg';
        echo "<td>       
        <a href='{$logo}' target='_blank'>
            <img src='{$logo}' alt='School Logo' style='width:50px; height:auto;'>
        </a>
      </td>";
        echo "<td>{$row['institutional_code']}</td>";   
        echo "<td>{$row['school_name']}</td>";
        echo "<td>{$row['school_type']}</td>";
        echo "<td>{$row['address']}</td>";
        echo "<td>{$row['email']}</td>";
        echo "<td>{$row['contact_number']}</td>";
        echo "<td>{$row['region']}</td>";
     
        $status = $row['status'];
        if ($status == 'ENABLED') {
            echo "<td><span class='badge rounded-pill bg-success'>{$status}</span></td>";
        } elseif ($status == 'DISABLED') {
            echo "<td><span class='badge rounded-pill bg-danger'>{$status}</span></td>";
        } else {
            echo "<td><span class='badge rounded-pill bg-secondary'>No Status</span></td>";
        }
       
        echo "<td align='center' style='text-align: center;'>                  
        <a href='php/delete_users.php?id=" . $row['id'] . "' class='btn btn-danger btn-sm' data-toggle='tooltip' title='Delete Record' onclick=\"return confirm('Are you sure you want to delete this record?')\"><i class='ri-delete-bin-2-line'></i></a></td>";

        echo "</tr>";

        // Increment the counter variable
        $i++;
    }

    // Free the result set
    mysqli_free_result($result_mhei);
} else {
    echo "Error executing the query: " . mysqli_error($link);
}

// Close the database connection
mysqli_close($link);
?>    

 
  </tbody>
</table>

</div>

            </div>
          </div>

        </div>
      </div>
    </section>



   

    
    <script>
$(document).ready(function() {
  $('#mheiTable').DataTable();
});
</script>