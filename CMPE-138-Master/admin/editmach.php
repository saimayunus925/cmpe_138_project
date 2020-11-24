 
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
$mach_id=$_REQUEST['mach_id'];

$result=mysqli_query($con,"select mach_id, mach_name,mach_type,mach_status from equipment where mach_id='$mach_id'")or die ("query 1 incorrect.......");

list($mach_id,$mach_name,$mach_type,$mach_status)=mysqli_fetch_array($result);

if(isset($_POST['btn_save']))
{

$mach_name=$_POST['mach_name'];
$mach_type=$_POST['mach_type'];
$mach_status=$_POST['mach_status'];

mysqli_query($con,"update equipment set mach_name='$mach_name', mach_type='$mach_type', mach_status='$mach_status' where mach_id='$mach_id'")or die("Query 2 is inncorrect..........");

header("location: machinelist.php");
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
                <h5 class="title">Edit Equipment</h5>
              </div>
              <form action="editmach.php" name="form" method="post" enctype="multipart/form-data">
              <div class="card-body">

                  <input type="hidden" name="mach_id" id="mach_id" value="<?php echo $mach_id;?>" />
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Machine Name</label>
                        <input type="text" id="mach_name" name="mach_name"  class="form-control" value="<?php echo $mach_name; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Machine Type</label>
                        <input type="text" id="mach_type" name="mach_type"  class="form-control" value="<?php echo $mach_type; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <div>
                        <label>Status</label>
                        <input type="text" id="mach_status" name="mach_status" class="form-control" value="<?php echo $mach_status; ?>" >
                      </div>
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
