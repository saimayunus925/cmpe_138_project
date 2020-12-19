 <!--SJSU CMPE 138 Fall 2020 TEAM8-->
<?php
session_start();
//If not logged in, go to login
if (!isset($_SESSION['loggedin'])) {
	header('Location: ../emp-login.php');
	exit;
}
include("../db.php");
$mem_id=$_REQUEST['mem_id'];

$result=mysqli_query($con,"select mem_id,mem_fname,mem_lname,mem_dob,mem_lvl,mem_status from member where mem_id='$mem_id'")or die ("Query 1 is incorrect");

list($mem_id,$mem_fname,$mem_lname,$mem_dob,$mem_lvl,$mem_status)=mysqli_fetch_array($result);

if(isset($_POST['btn_save']))
{
$mem_fname=$_POST['mem_fname'];
$mem_lname=$_POST['mem_lname'];
$mem_dob=$_POST['mem_dob'];
$mem_lvl=$_POST['mem_lvl'];
$mem_status=$_POST['mem_status'];

//update (edit) query
mysqli_query($con,"update member set mem_fname='$mem_fname', mem_lname='$mem_lname',mem_dob='$mem_dob', mem_lvl='$mem_lvl',mem_status='$mem_status' where mem_id='$mem_id'")or die("Query 2 is inncorrect");

header("location: managemem.php");
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
                <h5 class="title">Edit Member</h5>
              </div>
              <form action="editmem.php" name="form" method="post" enctype="multipart/form-data">
              <div class="card-body">

                  <input type="hidden" name="mem_id" id="mem_id" value="<?php echo $mem_id;?>" />
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>First Name</label>
                        <input type="text" id="mem_fname" name="mem_fname"  class="form-control" value="<?php echo $mem_fname; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" id="mem_lname" name="mem_lname"  class="form-control" value="<?php echo $mem_lname; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Date of Birth</label>
                        <input type="text" id="mem_dob" name="mem_dob"  class="form-control" value="<?php echo $mem_dob; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Member Level</label>
                        <input type="text" id="mem_lvl" name="mem_lvl"  class="form-control" value="<?php echo $mem_lvl; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <div>
                        <label>Status</label>
                        <input type="text" id="mem_status" name="mem_status" class="form-control" value="<?php echo $mem_status; ?>" >
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
