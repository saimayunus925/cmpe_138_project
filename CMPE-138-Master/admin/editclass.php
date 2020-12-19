<!--SJSU CMPE 138 Fall 2020 TEAM8--> 
<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page
if (!isset($_SESSION['loggedin'])) {
	header('Location: ../emp-login.php');
	exit;
}
include("../db.php");
$class_id=$_REQUEST['class_id'];

$result=mysqli_query($con,"select class_id,class_name,class_time,c_duration,emp_trainer from class where class_id='$class_id'")or die ("query 1 incorrect.......");

list($class_id,$class_name,$class_time,$c_duration,$emp_trainer)=mysqli_fetch_array($result);

if(isset($_POST['btn_save']))
{

$class_id=$_POST['class_id'];
$class_name=$_POST['class_name'];
$class_time=$_POST['class_time'];
$c_duration=$_POST['c_duration'];
$emp_trainer=$_POST['emp_trainer'];

mysqli_query($con,"update class set class_id='$class_id', class_name='$class_name',class_time='$class_time', c_duration='$c_duration',emp_trainer='$emp_trainer' where class_id='$class_id'")or die("Query 2 is inncorrect..........");

header("location: classes.php");
mysqli_close($con);
}
include "sidenav.php";
include "topheader.php";
?>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
        <div class="col-md-5 mx-auto">
            <div class="card">
              <div class="card-header card-header-primary">
                <h5 class="title">Edit Class</h5>
              </div>
              <form action="editclass.php" name="form" method="post" enctype="multipart/form-data">
              <div class="card-body">

                  <input type="hidden" name="class_id" id="class_id" value="<?php echo $class_id;?>" />
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Class Name</label>
                        <input type="text" id="class_name" name="class_name"  class="form-control" value="<?php echo $class_name; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Class Time</label>
                        <input type="text" id="class_time" name="class_time"  class="form-control" value="<?php echo $class_time; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Class Duration</label>
                        <input type="text" id="c_duration" name="c_duration"  class="form-control" value="<?php echo $c_duration; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Trainer ID</label>
                        <input type="text" id="emp_trainer" name="emp_trainer"  class="form-control" value="<?php echo $emp_trainer; ?>" >
                      </div>
                    </div>
              </div>
              <div class="card-footer">
                <button type="submit" id="btn_save" name="btn_save" class="btn btn-fill btn-primary">Update</button>
              </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <?php
include "footer.php";
?>
