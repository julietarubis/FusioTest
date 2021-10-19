<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Record</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        .wrapper{
            width: 1200px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
  <?php
    if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
        require_once "config.php";

        $id = trim($_GET["id"]);
        $query = mysqli_query($conn, "SELECT * FROM forecast WHERE ID = '$id'");

        if ($user = mysqli_fetch_assoc($query)) {
            $location   = $user["location"];
            $date    = $user["date"];
            $min_temp       = $user["min_temp"];
            $max_temp = $user["max_temp"];
            $wind_speed     = $user["wind_speed"];
            $wind_dir       = $user["wind_dir"];
            $wind_speed_night = $user["wind_speed_night"];
            $wind_dir_night     = $user["wind_dir_night"];
        } else {
            header("location: read.php");
            exit();
        }

        mysqli_close($conn);
    } else {
        header("location: read.php");
        exit();
    }
  ?>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1> User View</h1>
                    </div>
                    <div class="form-group">
                        <label>Location</label>
                        <p class="form-control-static"><?php echo $location ?></p>
                    </div>
                    <div class="form-group">
                        <label>Date</label>
                        <p class="form-control-static"><?php echo $date ?></p>
                    </div>
                    <div class="form-group">
                        <label>Min Temp</label>
                        <p class="form-control-static"><?php echo $min_temp ?></p>
                    </div>
                    <div class="form-group">
                        <label>Max Temp</label>
                        <p class="form-control-static"><?php echo $max_temp ?></p>
                    </div>
                    <div class="form-group">
                        <label>Wind Speed (day)</label>
                        <p class="form-control-static"><?php echo $wind_speed ?></p>
                    </div>
                    <div class="form-group">
                        <label>Wind Direction (day)</label>
                        <p class="form-control-static"><?php echo $wind_dir ?></p>
                    </div>
                    <div class="form-group">
                        <label>Wind Speed (night)</label>
                        <p class="form-control-static"><?php echo $wind_speed_night ?></p>
                    </div>
                    <div class="form-group">
                        <label>Wind Direction (night)</label>
                        <p class="form-control-static"><?php echo $wind_dir_night ?></p>
                    </div>
                    <p><a href="index.php" class="btn btn-primary">Back</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>