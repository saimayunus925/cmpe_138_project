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
$e_id=$_GET['e_id'];

/*this is delet query*/
mysqli_query($con,"delete from employee where e_id='$e_id'")or die("query is incorrect...");
}

///pagination

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


         <div class="col-md-14">
            <div class="card ">
              <div class="card-header card-header-primary">
                <h4 class="card-title"> Member List</h4>

              </div>
              <div class="card-body">
                <div class="table-responsive ps">
                  <table class="table tablesorter " id="page1">
                    <thead class=" text-primary">
                      <tr><th>Employee ID</th><th>User Name</th><th>Password</th><th>First Name</th><th>Last Name</th><th>Phone Number</th><th>Position</th><th>
	<a class=" btn btn-primary" href="addproduct.php">Add New</a></th></tr></thead>
                    <tbody>
                      <?php

                        $result=mysqli_query($con,"select e_id,emp_username, emp_password,emp_fname,emp_lname,emp_phone,emp_position from employee Limit $page1,12")or die ("query 1 incorrect.....");

                        while(list($e_id,$emp_username,$emp_password,$emp_fname,$emp_lname,$emp_phone,$emp_position)=mysqli_fetch_array($result))
                        {
                        echo "<tr><td>$e_id</td><td>$emp_username</td><td>$emp_password</td><td>$emp_fname</td><td>$emp_lname</td><td>$emp_phone</td><td>$emp_position</td>
                        <td>

                        <a href='editemp.php?e_id=$e_id' type='button' rel='tooltip' title='' class='btn btn-info btn-link btn-sm' data-original-title='Edit Employee'>
                                <i class='material-icons'>edit</i>
                              <div class='ripple-container'></div></a>
                        <a href='manageemp.php?e_id=$e_id&action=delete' type='button' rel='tooltip' title='' class='btn btn-danger btn-link btn-sm' data-original-title='Delete Employee'>
                                <i class='material-icons'>close</i>
                              <div class='ripple-container'></div></a>
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

                $paging=mysqli_query($con,"select e_id,emp_username, emp_password,emp_fname,emp_lname,emp_phone,emp_position from employee");
                $count=mysqli_num_rows($paging);

                $a=$count/10;
                $a=ceil($a);

                for($b=1; $b<=$a;$b++)
                {
                ?>
                <li class="page-item"><a class="page-link" href="machinelist.php?page=<?php echo $b;?>"><?php echo $b." ";?></a></li>
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
