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
$mem_id=$_GET['mem_id'];

/*this is delet query*/
mysqli_query($con,"update member set mem_status=0 where mem_id='$mem_id'")or die("update query is incorrect...");
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
							 <h4 class="card-title">Members Signed In </h4>
						 </div>
						 <div class="card-body">
							 <div class="table-responsive ps">
								 <table class="table table-hover tablesorter " id="">
									 <thead class=" text-primary">
										 <tr><th>Member ID</th><th>Member Name</th><th>Member Level</th>
									 </tr></thead>
									 <tbody>
										 <?php
											 $result=mysqli_query($con,"select mem_id, mem_fname, mem_lname, mem_lvl from member where mem_status=1")or die ("query 1 incorrect.....");

											 while(list($mem_id,$mem_fname,$mem_lname,$mem_lvl)=mysqli_fetch_array($result))
											 {
											 echo "<tr><td>$mem_id</td><td>$mem_fname<br>$mem_lname</td><td>$mem_lvl</td>

											 <td>
											 <a class=' btn btn-danger' href='members.php?mem_id=$mem_id&action=update'>Sign Out</a>
											 </td></tr>";
											 }
											 mysqli_close($con);
											 ?>
									 </tbody>
								 </table>

							 <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
						 </div>
					 </div>
				 </div>

			 </div>
		 </div>
		 <?php
include "footer.php";
?>
