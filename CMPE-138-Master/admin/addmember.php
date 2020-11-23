<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])){
 header('Location: ../emp-login.php');
 exit;
}
include("../db.php");
include "sidenav.php";
include "topheader.php";

if(isset($_POST['btn_save']))
{
$mem_id=$_POST['mem_id'];
$attendance=$_POST['attendance'];
$user_cost=$_POST['user_cost'];
$mem_lvl=$_POST['mem_lvl'];
$mem_lname=$_POST['mem_lname'];
$mem_fname=$_POST['mem_fname'];
$mem_dob=$_POST['mem_dob'];
$mem_status=$_POST['mem_status'];
$emp_id=$_POST['emp_id'];


mysqli_query($con,"insert into member(mem_id, attendance, user_cost, mem_lvl, mem_lname, mem_fname, mem_dob, mem_status, emp_id) values ('$mem_id', '$attendance','$user_cost','$mem_lvl','$mem_lname','$mem_fname','$mem_dob','$mem_status', '$emp_id')")
     or die ("Query 1 is inncorrect........");
header("location: managemem.php");
mysqli_close($con);
}

$mem_id = rand(1000,9999);
$mem_status = 1;
$attendance = 0;
?>
     <!-- End Navbar -->
     <div class="content add-page-bkgd">
       <div class="container-fluid">
         <!-- your content here -->
         <div class="col-md-12">
             <div class="card add-page-card-bkgd">
               <div class="card-header card-header-info">
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
                     <div class="col-md-2">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Date of Birth</label>
                         <input type="text" name="mem_dob" id="mem_dob" class="form-control" required>
                       </div>
                    </div>
                   </div>
                   <div class="row">
                     <div class="col-md-2">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Member Level:</label>
                       </div>
                     </div>
                     <div class="col-sm-1">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-lable-floating" for="mem_lvl">Platinum
                           <input type="radio" checked ="checked" id="mem_lvl" name="mem_lvl" value="Platinum" class="form-control"><span class ="checkmark"></span>
                         </lable>
                       </div>
                     </div>
                     <div class="col-sm-1">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-lable-floating" for="mem_lvl">Gold
                           <input type="radio" checked ="checked" id="mem_lvl" name="mem_lvl" value="Gold" class="form-control"><span class ="checkmark"></span>
                         </lable>
                       </div>
                     </div>
                     <div class="col-sm-1">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-lable-floating" for="mem_lvl">Bronze
                           <input type="radio" checked ="checked" id="mem_lvl" name="mem_lvl" value="Bronze" class="form-control"><span class ="checkmark"></span>
                         </lable>
                       </div>
                     </div>
                   </div>

                   <div class="row">
                    <div class="col-md-2">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">User Cost</label>
                         <input type="text" name="user_cost" id="user_cost" class="form-control" required>
                       </div>
                    </div>
                     <div class="col-md-2">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Employe ID</label>
                         <input type="text" name="emp_id" id="emp_id" class="form-control" required>
                       </div>
                    </div>
                   </div>

                   <div class="row">
                     <div class="col-md-2">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Member ID</label>
                         <input type="text" name="mem_id" id="mem_id" style="color: white" value ="<?php echo "$mem_id";?>"class="form-control" readonly>
                       </div>
                     </div>
                     <div class="col-sm-1">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Status</label>
                         <input type="text" name="mem_status" id="mem_status" style="color: white" value ="<?php echo "$mem_status";?>"class="form-control" readonly>
                       </div>
                     </div>
                     <div class="col-sm-1">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Attendence</label>
                         <input type="text" name="attendance" id="attendance" style="color: white" value ="<?php echo "$attendance";?>"class="form-control" readonly>
                       </div>
                     </div>
<!--                      <div class="col-sm-1">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Employee ID</label>
                         <input type="text" name="emp_id" id="emp_id" style="color: white" value ="<?php echo "$emp_id";?>"class="form-control" readonly>
                       </div>
                     </div> -->
                   </div>

                   <button type="submit" name="btn_save" id="btn_save" class="btn btn-primary pull-right">Add Member</button>
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
