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
$mach_id=$_POST['mach_id'];
$mach_name=$_POST['mach_name'];
$mach_type=$_POST['mach_type'];
$use_time=$_POST['use_time'];
$use_count=$_POST['use_count'];
$start_date=$_POST['start_date'];
$mach_status=$_POST['mach_status'];

mysqli_query($con,"insert into equipment(mach_id, mach_name, mach_type,use_time,use_count,start_date,mach_status) values ('$mach_id','$mach_name','$mach_type','$use_time','$use_count','$start_date','$mach_status')")
      or die ("Query 1 is inncorrect........");
header("location: machinelist.php");
mysqli_close($con);
}

$mach_id = rand(1000,9999);
$use_time = 0;
$use_count = 0;
$mach_status = 1;

?>
      <!-- End Navbar -->
      <div class="content add-page-bkgd"> // blue green bkgd for page body
        <div class="container-fluid">
          <!-- your content here -->
          <div class="col-md-12">
              <div class="card add-page-card-bkgd"> // light green bkgd for 'add machine' widget
                <div class="card-header card-header-info"> // 'info' Boostrap header is blue-green
                  <h4 class="card-title">Add Machine</h4>
                  <p class="card-category">Complete Machine Profile</p>
                </div>
                <div class="card-body">
                  <form action="" method="post" name="form" enctype="multipart/form-data">
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Machine Name</label>
                          <input type="text" name="mach_name" id="mach_name" class="form-control" required>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Machine Type</label>
                          <input type="text" id="mach_type" name="mach_type" class="form-control" required>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Start Date</label>
                          <input type="text" id="start_date" name="start_date" class="form-control" required>
                        </div>
                      </div>
                    </div>


                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Use Count</label>
                          <input type="text" name="use_count" id="use_count" style="color: white" value ="<?php echo "$use_count";?>"class="form-control" readonly>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Use Time</label>
                          <input type="text" name="use_time" id="use_time" style="color: white" value ="<?php echo "$use_time";?>"class="form-control" readonly>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Machine Status</label>
                          <input type="text" name="mach_status" id="mach_status" style="color: white" value ="<?php echo "$mach_status";?>"class="form-control" readonly>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Machine ID</label>
                          <input type="text" name="mach_id" id="mach_id" style="color: white" value ="<?php echo "$mach_id";?>"class="form-control" readonly>
                        </div>
                      </div>
                    </div>

                    <button type="submit" name="btn_save" id="btn_save" class="btn btn-primary pull-right">Add Machine</button>
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
