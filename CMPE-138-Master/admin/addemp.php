<!--SJSU CMPE 138 Fall 2020 TEAM8-->
<?php
session_start();
//If not logged in, go to login
if (!isset($_SESSION['loggedin'])) {
 header('Location: ../emp-login.php');
 exit;
}
include("../db.php");
include "sidenav.php";
include "topheader.php";
if(isset($_POST['btn_save']))
{
$e_id=$_POST['e_id'];
$emp_username=$_POST['emp_username'];
$emp_password=$_POST['emp_password']; //get password
$emp_pass= password_hash($emp_password, PASSWORD_DEFAULT); //password_hash function to hash the password
$emp_lname=$_POST['emp_lname'];
$emp_fname=$_POST['emp_fname'];
$emp_position=$_POST['emp_position'];
$emp_phone=$_POST['emp_phone'];
//insert data into employee table
mysqli_query($con,"insert into employee(e_id, emp_username, emp_password, emp_lname,emp_fname,emp_position,emp_phone) values ('$e_id','$emp_username','$emp_pass','$emp_lname','$emp_fname','$emp_position','$emp_phone')")
     or die ("Query 1 is incorrect");
mysqli_close($con);
}
$e_id = rand(1000,9999);

?>
     <!-- End Navbar -->
     <div class="content add-page-bkgd">
       <div class="container-fluid">
         <div class="col-md-12">
             <div class="card add-page-card-bkgd">
               <div class="card-header card-header-info">
                 <h4 class="card-title">Add Employee</h4>
                 <p class="card-category">Complete Employee Profile</p>
               </div>
               <div class="card-body">
                 <form action="" method="post" name="form" enctype="multipart/form-data">
                   <div class="row">
                     <div class="col-md-2">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Employee ID</label>
                         <input type="text" name="e_id" id="e_id" style="color: white" value ="<?php echo "$e_id";?>"class="form-control" readonly>
                       </div>
                     </div>
                     <div class="col-md-4">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Username</label>
                         <input type="text" name="emp_username" id="emp_username" class="form-control" required>
                       </div>
                     </div>
                     <div class="col-md-4">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Password</label>
                         <input type="password" id="emp_password" name="emp_password" class="form-control" required>
                       </div>
                     </div>
                   </div>

                   <div class="row">
                     <div class="col-md-3">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">First Name</label>
                         <input type="text" name="emp_fname" id="emp_fname"  class="form-control" required>
                       </div>
                     </div>
                     <div class="col-md-3">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Last Name</label>
                         <input type="text" name="emp_lname" id="emp_lname"  class="form-control" required>
                       </div>
                     </div>
                     <div class="col-md-3">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Phone Number</label>
                         <input type="text" name="emp_phone" id="emp_phone"  class="form-control" required>
                       </div>
                     </div>
                   </div>
                   <div class="row">
                     <div class="col-md-4">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Position</label>
                         <input type="text" name="emp_position" id="emp_position"  class="form-control" required>
                       </div>
                     </div>
                   </div>


                   <button type="submit" name="btn_save" id="btn_save" class="btn btn-primary pull-right">Add Employee</button>
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
