<?php
include 'Search.php';
$search = new Search();
$sqlConditions = array();
if(!empty($_POST['type']) && (!empty($_POST['keywords']) || !empty($_POST['sortValue']))){
    if($_POST['type'] == 'search'){
        $sqlConditions['search'] = array('mach_name'=>$_POST['keywords'],'mach_type'=>$_POST['keywords'],'mach_status'=>$_POST['keywords']);
        $sqlConditions['order_by'] = 'mach_name DESC';
    }elseif($_POST['type'] == 'sort'){
		if($_POST['keywords']) {
			$sqlConditions['search'] = array('mach_name'=>$_POST['keywords'],'mach_type'=>$_POST['keywords'],'mach_status'=>$_POST['keywords']);
		}
        $sortValue = $_POST['sortValue'];
        $sortArribute = array(
            'new' => array(
                'order_by' => 'mach_name DESC'
            ),
            'asc'=>array(
                'order_by'=>'mach_type ASC'
            ),
            'desc'=>array(
                'order_by'=>'mach_status DESC'
            )
        );
        $sortKey = key($sortArribute[$sortValue]);
        $sqlConditions[$sortKey] = $sortArribute[$sortValue][$sortKey];
    }
}else{
    $sqlConditions['order_by'] = 'mach_name ASC';
}
$orders = $search->searchResult($sqlConditions);
if(!empty($orders)){
	foreach($orders as $order){
		echo '
		<tr>
    <td>'.$order["mach_name"].'</td>
    <td>'.$order["mach_type"].'</td>
    <td>'.$order["mach_status"].'</td>
		</tr>';
	}
}else{
    echo '<tr><td colspan="5">No user(s) found...</td></tr>';
}
exit;
