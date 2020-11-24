<!--SJSU CMPE 138 Fall 2020 TEAM8-->

<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: ../emp-login.php');
	exit;
}
include("../db.php");
$e_id=$_REQUEST['e_id'];

$result=mysqli_query($con,"select e_id,emp_username, emp_password,emp_fname,emp_lname,emp_phone,emp_position from employee where e_id='$e_id'")or die ("query 1 incorrect.......");

list($e_id,$emp_username,$emp_password,$emp_fname,$emp_lname,$emp_phone,$emp_position)=mysqli_fetch_array($result);

if(isset($_POST['btn_save']))
{

$emp_username=$_POST['emp_username'];
$emp_password=$_POST['emp_password'];
$emp_fname=$_POST['emp_fname'];
$emp_lname=$_POST['emp_lname'];
$emp_phone=$_POST['emp_phone'];
$emp_position=$_POST['emp_position'];

mysqli_query($con,"update employee set emp_username='$emp_username', emp_password='$emp_password',emp_fname='$emp_fname',emp_lname='$emp_lname',emp_phone='$emp_phone',emp_position='$emp_position' where e_id='$e_id'")or die("Query 2 is inncorrect..........");

header("location: manageemp.php");
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
                <h5 class="title">Edit Employee</h5>
              </div>
              <form action="editemp.php" name="form" method="post" enctype="multipart/form-data">
              <div class="card-body">

                  <input type="hidden" name="e_id" id="e_id" value="<?php echo $e_id;?>" />
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Username</label>
                        <input type="text" id="emp_username" name="emp_username"  class="form-control" value="<?php echo $emp_username; ?>" >
                      </div>
                    </div>
					          <div class="col-md-12 ">
                      <div class="form-group">
                        <label >Password</label>
                        <input type="text" name="emp_password" id="emp_password" class="form-control" value="<?php echo $emp_password; ?>">
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>First Name</label>
                        <input type="text" id="emp_fname" name="emp_fname"  class="form-control" value="<?php echo $emp_fname; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" id="emp_lname" name="emp_lname"  class="form-control" value="<?php echo $emp_lname; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Phone Number</label>
                        <input type="text" id="emp_phone" name="emp_phone"  class="form-control" value="<?php echo $emp_phone; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Position</label>
                        <input type="text" id="emp_position" name="emp_position"  class="form-control" value="<?php echo $emp_position; ?>" >
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
