<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <title>Dashboard</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <style type="text/css">
          .wrapper {
              width: 1200px;
              margin: 0 auto;
          }
      </style>
  </head>
  <body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
              
                <div class="col-md-12">
                    <div class="page-header clearfix">
                        <h2 class="pull-left"></h2>
                        <form action="search.php" method="GET">
                            <input type="text" name="search" class="form-control" value="Search">
                        </form>
                    </div>

                    <?php
                    // Include config file
                    require_once "config.php";

                    // select all users
                    $data = "SELECT * FROM forecast";
                    if($users = mysqli_query($conn, $data)){
                        if(mysqli_num_rows($users) > 0){
                            echo "<table class='table table-bordered table-striped'>
                                    <thead>
                                      <tr>
                                        <th></th>
                                        <th>Location</th>
                                        <th>Date</th>
                                        <th>Min Temp</th>
                                        <th>Max Temp</th>
                                        <th>Wind Speed (day)</th>
                                        <th>Wind Direction (day)</th>
                                        <th>Wind Speed (night)</th>
                                        <th>Wind Direction (night)</th>
                                        <th>Action</th>
                                      </tr>
                                    </thead>
                                    <tbody>";
                                while($user = mysqli_fetch_array($users)) {
                                    echo "<tr>
                                            <td></td>
                                            <td>" . $user['location'] . "</td>
                                            <td>" . $user['date'] . "</td>
                                            <td>" . $user['min_temp'] . "</td>
                                            <td>" . $user['max_temp'] . "</td>
                                            <td>" . $user['wind_speed'] . "</td>
                                            <td>" . $user['wind_dir'] . "</td>
                                            <td>" . $user['wind_speed_night'] . "</td>
                                            <td>" . $user['wind_dir_night'] . "</td>
                                            <td>
                                              <a href='edit.php?id=". $user['id'] ."' title='Edit User'>Edit</a> |
                                              <a href='delete.php?id=". $user['id'] ."' title='Delete User' >Delete</a>
                                            </td>
                                          </tr>";
                                }
                                echo "</tbody>
                                </table>";
                            mysqli_free_result($users);
                        } else{
                            echo "<p class='lead'><em>No records found.</em></p>";
                        }
                    } else{
                        echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
                    }

                    // Close connection
                    mysqli_close($conn);
                    ?>

                     <div class="page-header clearfix">
                        <h2 class="pull-left"></h2>
                        <a  href="create.php" class="btn btn-success pull-left" style="margin: 2px;">Add New</a> 
                        <a href="http://localhost/example/logout.php" class="btn btn-success pull-left" style="margin: 2px;">Logout</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
  </body>
</html>