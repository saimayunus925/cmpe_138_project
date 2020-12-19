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
               <h4 class="card-title">Search </h4>
             </div>
             <div class="card-body">
               <div class="table-responsive ps">
                 <table class="table table-hover tablesorter " id="page1">
                   <div class="row">
                    <?php include "searchemp.php"; ?>
                   </div>

                   <tbody>


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
