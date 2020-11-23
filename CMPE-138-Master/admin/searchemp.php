<!DOCTYPE html>
<html>
<body>
<object align= right>
<form method="post">
<label>Search</label>
<input type="text" name="search">
<input type="submit" name="submit">
</object>
</form>
</body>
</html>

<?php

$con = new PDO("mysql:host=localhost;dbname=gym_manage",'root','');
$found = '0';
if (isset($_POST["submit"])) {
	$str = $_POST["search"];
	$sth = $con->prepare("SELECT e_id,emp_username,emp_fname,emp_lname,emp_phone,emp_position FROM `employee` WHERE e_id = '$str' OR emp_username = '$str' OR emp_fname = '$str' OR emp_lname = '$str' OR emp_phone = '$str' OR emp_position = '$str'");

	$sth->setFetchMode(PDO:: FETCH_OBJ);
	$sth -> execute();
	while($row = $sth->fetch())
	{
    $found = '1';
		?>
    <div style="Color:white">
		<table>
			<tr>
				<th style="text-indent: 22em;">Employee ID &nbsp;|&nbsp; </th>
				<th>Username &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; </th>
        <th>First name &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;</th>
        <th>Last name &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; </th>
        <th>Phone number &nbsp;|&nbsp; </th>
        <th>Position</th>
			</tr>
			<tr>
				<td style="text-indent: 22em;"><?php echo $row->e_id; ?></td>
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
  if($found == '0'){
      echo '<i style="color:white; font-size:18px; font-style: normal;">
      Employee does not exist </i> ';
    }

}

?>
