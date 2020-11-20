 <?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: ../emp-login.php');
	exit;
}
include("../db.php");

include "sidenav.php";
include "topheader.php";
?>
      <!-- End Navbar -->
	  <div class="content">
        <div class="container-fluid">
			<div class="col-md-14">
				<div class="card ">
				  <div class="card-header card-header-primary">
					<h4 class="card-title"> Machine List</h4>
					  </div>
					  <div class="card-body">
						<div class="table-responsive ps">
						<table class="table tablesorter " id="page1">
							<div class="row">
								<div class="form-group col-md-3">
									<input type="text" class="search form-control" id="keywords" name="keywords" placeholder="By name or catagory">
								</div>
								<div class="form-group col-md-2">
									<input type="button" class="btn btn-primary" value="Search" id="search" name="search" />
								</div>
								<div class="form-group col-md-4">
									<select class="form-control" id="sortSearch" >
									  <option value="" disable selected hidden>Sort by</option>
									  <option value="new">Sort by Machine Name</option>
									  <option value="asc">Sort by Machine Type</option>
									  <option value="desc">Sort by Status</option>
									</select>
								</div>
							</div>
							<table class="table">
								<thead>
									<tr>
										<th>Machine Name</th>
										<th>Machine Type</th>
                    <th>Status</th>
									</tr>
								</thead>
								<tbody id="userData">
									<?php
									include 'Search.php';
									$search = new Search();
									$allOrders = $search->searchResult(array('order_by'=>'mach_id DESC'));
									if(!empty($allOrders)) {
										foreach($allOrders as $order) {
											echo '
											<tr>
											<td>'.$order["mach_name"].'</td>
											<td>'.$order["mach_type"].'</td>
                      <td>'.$order["mach_status"].'</td>
											</tr>';
										}
									} else {
									?>
										<tr><td colspan="5">No result found...</td></tr>
									<?php } ?>
								</tbody>
							</table>
						</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

      <?php
include "footer.php";
?>
