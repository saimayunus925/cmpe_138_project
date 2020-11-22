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
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='update')
{
$mach_id=$_GET['mach_id'];

/*this is delet query*/
mysqli_query($con,"update equipment set mach_status=1 where mach_id='$mach_id'")or die("update query is incorrect...");
}

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
                <h4 class="card-title">Sanitize Machines </h4>
              </div>
              <div class="card-body">
                <div class="table-responsive ps">
                  <table class="table table-hover tablesorter " id="page1">
                    <thead class=" text-primary">
                      <tr><th>Machine ID</th><th>Name</th><th>Type</th><th>Last Used</th>
                    </tr></thead>
                    <tbody>
                      <?php
                        $result=mysqli_query($con,"select mach_id, mach_name, mach_type,mem_fname,mem_lname from equipment inner join member where last_used=mem_id and mach_status=0  Limit $page1,12")or die ("query 1 incorrect.....");

                        while(list($mach_id,$mach_name,$mach_type,$mem_fname,$mem_lname)=mysqli_fetch_array($result))
                        {
                        echo "<tr><td>$mach_id</td><td>$mach_name</td><td>$mach_type</td><td>$mem_fname $mem_lname</td>

                        <td>
                        <a class=' btn btn-success' href='machines.php?mach_id=$mach_id&action=update'>Ready</a>
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

                $paging=mysqli_query($con,"select mach_id, mach_name, mach_type,mem_fname,mem_lname from equipment inner join member where last_used=mem_id and mach_status=0");
                $count=mysqli_num_rows($paging);

                $a=$count/10;
                $a=ceil($a);

                for($b=1; $b<=$a;$b++)
                {
                ?>
                <li class="page-item"><a class="page-link" href="machines.php?page=<?php echo $b;?>"><?php echo $b." ";?></a></li>
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
