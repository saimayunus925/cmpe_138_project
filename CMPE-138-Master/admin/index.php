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
               <h4 class="card-title">Search Employees </h4>
             </div>
             <div class="card-body">
               <div class="table-responsive ps">
                 <table class="table table-hover tablesorter " id="page1">
                   <div class="row">

                   </div>

                   <tbody>


                   </tbody>
                 </table>
                 <!DOCTYPE html>
                 <html>
                 <body>
                 <object align= left>
                 <form method="post">
                 <label>Search</label>
                 <input type="text" name="search">
                 <input type="submit" name="submit">
                 </object>
                 </form>
                 </body>
                 </html>
                 <br> <br>
                 <?php


                 $con = new PDO("mysql:host=localhost;dbname=gym_manage",'root','');
                 if(isset($_POST["submit"])) {
                 	$str = $_POST["search"];
                  if (!empty($str)){
                 	$sth = $con->prepare("SELECT e_id,emp_username,emp_fname,emp_lname,emp_phone,emp_position FROM `employee` WHERE e_id = '$str' OR emp_username = '$str' OR emp_fname = '$str' OR emp_lname = '$str' OR emp_phone = '$str' OR emp_position = '$str'");
                 	$sth->setFetchMode(PDO:: FETCH_OBJ);
                 	$sth -> execute();
                  $count = $sth -> rowCount();
                  if($count >= 1){
                 	while($row = $sth->fetch())
                 	{
                 		?>
                     <div style="Color:black">
                 		<table>
                 			<tr>
                 				<th>Employee ID &nbsp;|&nbsp; </th>
                 				<th>Username &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; </th>
                         <th>First name &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;</th>
                         <th>Last name &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; </th>
                         <th>Phone number &nbsp;|&nbsp; </th>
                         <th>Position</th>
                 			</tr>
                 			<tr>
                 				<td><?php echo $row->e_id; ?></td>
                 				<td><?php echo $row->emp_username;?></td>
                         <td><?php echo $row->emp_fname;?></td>
                         <td><?php echo $row->emp_lname;?></td>
                         <td><?php echo $row->emp_phone;?></td>
                         <td><?php echo $row->emp_position;?></td>
                 			</tr>

                 		</table>
                   </div>
                 <?php
                 	}
              }
              if($count < 1){
echo '<div style="font-size:17px;color:black;font-style:normal;">'."No employees match your search.".'</span></div>';
              }
            }
              }


                 ?>

               <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
             </div>
           </div>

         </div>

       </div>
     </div>
     <?php
include "footer.php";
?>
