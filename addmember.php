 <?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: ../emp-login.php');
	exit;
}
include("../db.php");
include "sidenav.php";
include "topheader.php";
if(isset($_POST['btn_save']))
{
$attendance=$_POST['attendance'];
$user_cost=$_POST['user_cost'];
$mem_lvl=$_POST['mem_lvl'];
$level_num=$_POST['level_num'];
$mem_lname=$_POST['mem_lname'];
$mem_fname=$_POST['mem_fname'];
$mem_dob=$_POST['mem_dob'];
$mem_status=$_POST['mem_status'];

mysqli_query($con,"insert into member(attendance, user_cost, mem_lvl, level_num, mem_lname, mem_fname, mem_dob, mem_status) values ('$attendance','$user_cost','$mem_lvl','$level_num','$mem_lname','$mem_fname','$mem_dob','$mem_status')")
			or die ("Query 1 is inncorrect........");
header("location: manageemp.php");
mysqli_close($con);
}


?>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <!-- your content here -->
          <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add New Member</h4>
                  <p class="card-category">Complete Member Profile</p>
                </div>
                <div class="card-body">
                  <form action="" method="post" name="form" enctype="multipart/form-data">
                    <div class="row">

                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">First Name</label>
                          <input type="text" name="mem_fname" id="mem_fname"  class="form-control" required>
                        </div>
                      </div>
                    <div class="col-md-4">
                      <div class="form-group bmd-form-group">
                        <label class="bmd-label-floating">Last Name</label>
                        <input type="text" name="mem_lname" id="mem_lname"  class="form-control" required>
                      </div>
                    </div>
                  </div>
                    <div class="row">
                      <div class="col-md-2">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Date of Birth</label>
                          <input type="text" name="mem_dob" id="mem_dob" class="form-control" required>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Member Level:</label>
                        </div>
                      </div>
                      <div class="col-sm-1">
                        <div class="form-group bmd-form-group">
                          <input type="checkbox" id="mem_lvl" name="mem_lvl" value="Platinum" class="form-control" required>
                          <label class="bmd-lable-floating" for="mem_lvl"> Platinum</lable>
                        </div>
                      </div>
                      <div class="col-sm-1">
                        <div class="form-group bmd-form-group">
                          <input type="checkbox" id="mem_lvl" name="mem_lvl" value="Gold" class="form-control" required>
                          <label for="mem_lvl">Gold</lable>
                        </div>
                      </div>
                      <div class="col-sm-1">
                        <div class="form-group bmd-form-group">
                          <input type="checkbox" id="mem_lvl" name="mem_lvl" value="Bronze" class="form-control" required>
                          <label for="mem_lvl">Bronze</lable>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-1">
                        <div class="form-group bmd-form-group">
                          <input type="checkbox" id="mem_status" name="mem_status" value=1 class="form-control" required>
                          <label for="mem_lvl">Status</lable>
                        </div>
                      </div>
                    </div>

                    <button type="submit" name="btn_save" id="btn_save" class="btn btn-primary pull-right">Complete Register</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
        </div>
      </div>
      <?php
include "footer.php";
?>
