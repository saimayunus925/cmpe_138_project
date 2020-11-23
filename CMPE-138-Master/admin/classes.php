 <?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: ../emp-login.php');
	exit;
}
include("../db.php");

error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$class_id=$_GET['class_id'];

/*this is update query*/
mysqli_query($con,"delete from class where class_id='$class_id'")or die("update query is incorrect...");
}
// if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
// {
// $class_id=$_GET['class_id'];
//
// /*this is update query*/
// mysqli_query($con,"select mem_id, mem_fname, memfrom class where class_id='$class_id'")or die("update query is incorrect...");
// }

$page=$_GET['page'];

if($page=="" || $page=="1")
{
$page1=0;
}
else
{
$page1=($page*10)-10;
}

include "sidenav.php";
include "topheader.php";
?>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <!-- your content here -->
          <div class="col-md-14">
            <div class="card ">
              <div class="card-header card-header-primary">
                <h4 class="card-title">Classes Menu </h4>
              </div>
              <div class="card-body">
                <div class="table-responsive ps">
                  <table class="table table-hover tablesorter " id="page1">
                    <thead class=" text-primary">
                      <tr><th>Class ID</th><th>Class Name</th><th>Class Time</th><th>Duration</th><th>Trainer</th><th>
                        <a class=" btn btn-primary" href="addclass.php">Add New</a></th></tr></thead>
                  </thead>
                    <tbody>
                      <?php
                        $result=mysqli_query($con,"select class_id, class_name, class_time,c_duration, emp_fname from class, employee where emp_trainer=e_id Limit $page1,12")or die ("query 1 incorrect.....");

                        while(list($class_id,$class_name,$class_time,$c_duration,$emp_fname)=mysqli_fetch_array($result))
                        {
                        echo "<tr><td>$class_id</td><td>$class_name</td><td>$class_time</td><td>$c_duration hour(s)</td><td>$emp_fname</td>
                        <td>

                        <a href='classes.php?class_id=$class_id&action=delete' type='button' rel='tooltip' title='' class='btn btn-danger btn-link btn-sm' data-original-title='Delete Class'>
                          <i class='material-icons'>close</i>
                          <div class='ripple-container'></div>
                        </a>

                        <a href='editclass.php?class_id=$class_id' type='button' rel='tooltip' title='' class='btn btn-info btn-link btn-sm' data-original-title='Edit Class'>
                          <i class='material-icons'>edit</i>
                          <div class='ripple-container'></div>
                        </a>
                        </td></tr>";

                        }
                        ?>
                    </tbody>
                  </table>

                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
              </div>
            </div>
            <nav aria-label="Page navigation example">
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                 <?php
//counting paging

                $paging=mysqli_query($con,"select class_id, class_name, class_time, emp_trainer from class");
                $count=mysqli_num_rows($paging);

                $a=$count/10;
                $a=ceil($a);

                for($b=1; $b<=$a;$b++)
                {
                ?>
                <li class="page-item"><a class="page-link" href="classes.php?page=<?php echo $b;?>"><?php echo $b." ";?></a></li>
                <?php
}
?>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>

        </div>
      </div>
      <?php
include "footer.php";
?>
