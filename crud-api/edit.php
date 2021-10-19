<?php
require_once "config.php";

$location = $date = $min_temp = $max_temp = $wind_speed = $wind_dir = $wind_speed_night = $wind_dir_night = "";
$location_error = $date_error = $min_temp_error = $max_temp_error = $wind_speed_error = $wind_dir_error = $wind_speed_night_error = $wind_dir_night_error = "";

if (isset($_POST["id"]) && !empty($_POST["id"])) {

    $id = $_POST["id"];

        $location = trim($_POST["location"]);
        if (empty($location)){
            $location_error = "Location is required.";
        } else {
            $location = $location;
        }

        $date = trim($_POST["date"]);
        if (empty($date)){
            $date_error = "Date is required.";
        } else {
            $date = $date;
        }

        $min_temp = trim($_POST["min_temp"]);
        if (empty($min_temp)){
            $min_temp_error = "Min Temp is required.";
        } else {
            $min_temp = $min_temp;
        }

        $max_temp = trim($_POST["max_temp"]);
        if (empty($max_temp)){
            $max_temp_error = "Max Temp is required.";
        } else {
            $max_temp = $max_temp;
        }

        $wind_speed = trim($_POST["wind_speed"]);
        if (empty($wind_speed)) {
            $wind_speed_error = "Wind Speed is required.";
        } else {
            $wind_speed = $wind_speed;
        }

        $wind_dir = trim($_POST["wind_dir"]);
        if (empty($wind_dir)) {
            $wind_dir_error = "Wind direction is required.";
        } else {
            $wind_dir = $wind_dir;
        }

        $wind_speed_night = trim($_POST["wind_speed_night"]);
        if (empty($wind_speed_night)) {
            $wind_speed_night_error = "Wind Speed night is required.";
        } else {
            $wind_speed_night = $wind_speed_night;
        }

        $wind_dir_night = trim($_POST["wind_dir_night"]);
        if (empty($wind_dir_night)) {
            $wind_dir_night_error = "Wind Dir Night is required.";
        } else {
            $wind_dir_night = $wind_dir_night;
        }

    if (empty($location_error_err) && empty($date_error) &&
        empty($min_temp_error) && empty($max_temp_error) && empty($wind_speed_error) && empty($wind_dir_error) && empty($wind_speed_night_error) && empty($wind_dir_night_error) ) {

          $sql = "UPDATE `forecast` SET `location`= '$location', `date`= '$date', `min_temp`= '$min_temp', `max_temp`= '$max_temp', `wind_speed`= '$wind_speed', `wind_dir`= '$wind_dir', `wind_speed_night`= '$wind_speed_night', `wind_dir_night`= '$wind_dir_night' WHERE id='$id'";

          if (mysqli_query($conn, $sql)) {
              header("location: index.php");
          } else {
              echo "Something went wrong. Please try again later.";
          }

    }

    mysqli_close($conn);
} else {
    if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
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
            echo "Something went wrong. Please try again later.";
            header("location: edit.php");
            exit();
        }
        mysqli_close($conn);
    }  else {
        echo "Something went wrong. Please try again later.";
        header("location: edit.php");
        exit();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Record</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
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
                    <div class="page-header">
                        <h2>Update User</h2>
                    </div>
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                      <input type="hidden" name="id" value="<?php echo $id; ?>"/>
                        <div class="form-group <?php echo (!empty($location_error)) ? 'has-error' : ''; ?>">
                            <label>Location</label>
                            <input type="text" name="location" class="form-control" value="<?php echo $location; ?>">
                            <span class="help-block"><?php echo $location_error;?></span>
                        </div>

                        <div class="form-group <?php echo (!empty($date_error)) ? 'has-error' : ''; ?>">
                            <label>Date</label>
                            <input type="text" name="date" class="form-control" value="<?php echo $date; ?>">
                            <span class="help-block"><?php echo $date_error;?></span>
                        </div>

                        <div class="form-group <?php echo (!empty($min_temp_error)) ? 'has-error' : ''; ?>">
                            <label>Min Temp</label>
                            <input type="text" name="min_temp" class="form-control" value="<?php echo $min_temp; ?>">
                            <span class="help-block"><?php echo $min_temp_error;?></span>
                        </div>

                        <div class="form-group <?php echo (!empty($max_temp_error)) ? 'has-error' : ''; ?>">
                            <label>Max Temp</label>
                            <input type="text" name="max_temp" class="form-control" value="<?php echo $max_temp; ?>">
                            <span class="help-block"><?php echo $max_temp_error;?></span>
                        </div>

                        <div class="form-group <?php echo (!empty($wind_speed_error)) ? 'has-error' : ''; ?>">
                            <label>Wind Speed (day)</label>
                            <input type="text" name="wind_speed" class="form-control" value="<?php echo $wind_speed; ?>">
                            <span class="help-block"><?php echo $wind_speed_error;?></span>
                        </div>

                        <div class="form-group <?php echo (!empty($wind_dir_error)) ? 'has-error' : ''; ?>">
                            <label>Wind Direction (day)</label>
                            <input type="text" name="wind_dir" class="form-control" value="<?php echo $wind_dir; ?>">
                            <span class="help-block"><?php echo $wind_dir_error;?></span>
                        </div>

                        <div class="form-group <?php echo (!empty($wind_speed_night_error)) ? 'has-error' : ''; ?>">
                            <label>Wind Speed (night)</label>
                            <input type="text" name="wind_speed_night" class="form-control" value="<?php echo $wind_speed_night; ?>">
                            <span class="help-block"><?php echo $wind_speed_night_error;?></span>
                        </div>

                         <div class="form-group <?php echo (!empty($wind_dir_night_error)) ? 'has-error' : ''; ?>">
                            <label>Wind Direction (night)</label>
                            <input type="text" name="wind_dir_night" class="form-control" value="<?php echo $wind_dir_night; ?>">
                            <span class="help-block"><?php echo $wind_dir_night_error;?></span>
                        </div>

                        <input type="submit" class="btn btn-primary" value="Submit">
                        <!--<a href="index.php" class="btn btn-default">Cancel</a>-->
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>