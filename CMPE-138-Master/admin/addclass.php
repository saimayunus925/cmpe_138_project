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
$class_id=$_POST['class_id'];
$class_name=$_POST['class_name'];
$class_time=$_POST['class_time'];
$c_duration=$_POST['c_duration'];
$emp_trainer=$_POST['emp_trainer'];

mysqli_query($con,"insert into class(class_id, class_name, class_time, c_duration, emp_trainer) values ('$class_id', '$class_name','$class_time','$c_duration','$emp_trainer')")
     or die ("Query 1 is inncorrect........");
header("location: classes.php");
mysqli_close($con);
}

$class_id = rand(1000,9999);
?>
     <!-- End Navbar -->
     <div class="content add-page-bkgd">
       <div class="container-fluid">
         <!-- your content here -->
         <div class="col-md-12">
             <div class="card add-page-card-bkgd">
               <div class="card-header card-header-info">
                 <h4 class="card-title">Add New Class</h4>
                 <p class="card-category">Complete Class Profile</p>
               </div>

               <div class="card-body">
                 <form action="" method="post" name="form" enctype="multipart/form-data">
                   <div class="row">
                      <div class="col-md-2">
                        <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Class ID</label>
                         <input type="text" name="class_id" id="class_id" style="color: white" value ="<?php echo "$class_id";?>"class="form-control" readonly>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group bmd-form-group">
                        <label class="bmd-label-floating">Class Name</label>
                        <input type="text" name="class_name" id="class_name"  class="form-control" required>
                      </div>
                    </div>
                  </div>

                  <div class ="row">
                    <div class="col-md-2">
                       <div class="form-group bmd-form-group">
                         <label class="bmd-label-floating">Class Time</label>
                         <input type="text" name="class_time" id="class_time" class="form-control" required>
                       </div>
                    </div>
                    <div class="col-md-2">
                     <div class="form-group bmd-form-group">
                       <label class="bmd-label-floating">Class Duration</label>
                       <input type="text" name="c_duration" id="c_duration" class="form-control" required>
                     </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-2">
                     <div class="form-group bmd-form-group">
                       <label class="bmd-label-floating">Trainer ID</label>
                       <input type="text" name="emp_trainer" id="emp_trainer" class="form-control" required>
                     </div>
                    </div>
                  </div>

                   </div>
                   <button type="submit" name="btn_save" id="btn_save" class="btn btn-primary pull-right">Add Class</button>
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
