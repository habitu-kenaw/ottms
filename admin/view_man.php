<!--for delete Record -->
<?php
	$msg="";
	$opr="";
	if(isset($_GET['opr']))
	$opr=$_GET['opr'];
	
if(isset($_GET['rs_id']))
	$id=$_GET['rs_id'];
	
	if($opr=="del")
{
	$del_sql=mysqli_query($conn,"DELETE FROM user WHERE u_id=$id");
	if($del_sql){
		echo "<fz>User has been deleted successfully!</fz>";
	    echo'<meta content="5;main.php?C_account_entry.php" http-equiv="refresh" />';
	}
	else
		$msg="Could not Delete :".mysql_error();	
			
} 
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>teacher transfer system</title>
<link rel="stylesheet" type="text/css" href="css/style_view.css" />
</head>

<body>
	
	<style>
fz{
	color: red;
	font-size: 20px;
}
</style>

<div id="style_div" >
<form method="post">
<table width="730">
	<tr>
    	<td width="190px" style="font-size:18px; color:#006; text-indent:30px;"><b>View User</b></td>
        <td>
        	<input type="text" name="searchtxt" title="Enter ID for search " class="search" autocomplete="off"/>
        </td> 
        <td style="float:right">
        	<input style="width:75px; margin-right: 75px;" type="submit" name="btnsearch" value="Search" id="button-search" title="Search User" />
        </td>
    </tr>
</table>
<table>
	<tr>
	<?php
	$user=mysqli_query($conn,"SELECT * FROM user");
	$count = mysqli_num_rows($user);
	 if($count>='1')
	?>
	<td style="font-size:18px; color:#006; text-indent:80px;">Total No of User<font size="5px" color="blue" >(<?php echo $count?>)</font></td>
</tr>
</table>
</form>
</div><!--- end of style_div -->
<br />
<div id="content-input">
<form method="post">

     <table border="1" width="1050px" align="center" cellpadding="3" class="mytable" cellspacing="0">
        <tr>
            <th>No</th>
			<th>ID</th>
			<th>f_name</th>
			<th>l_name</th>
			<th>age</th>
			<th>sex</th>
			<th>Woreda Code</th>
			<th>Role</th>
			<th>status</th>
			<th>date</th>
			<th colspan="2">Operation</th>
			
            
        </tr>
        
        <?php
	$key="";
	if(isset($_POST['searchtxt']))
		$key=$_POST['searchtxt'];
	
	if($key !="")
		$sql_sel=mysqli_query($conn,"SELECT * FROM user where u_id  like '%$key%' or fname like '%$key%'");
	else
		 $sql_sel=mysqli_query($conn,"SELECT * FROM user");  
    $i=0;
    while($row=mysqli_fetch_array($sql_sel)){
    $i++;
    $color=($i%2==0)?"lightblue":"white";
    ?>
      <tr bgcolor="<?php echo $color?>">
            <td><?php echo $i;?></td>
			<td><?php echo $row['u_id'];?></td>
            <td><?php echo $row['fname'];?></td>
            <td><?php echo $row['lname'];?></td>
			<td><?php echo $row['age'];?></td>
			<td><?php echo $row['sex'];?></td>
			<td><?php echo $row['wcode'];?></td>
			<td><?php echo $row['role'];?></td>
			<td><?php echo $row['status'];?></td>
            <td><?php echo date("M d, Y ",strtotime($row['date'])); ?></span></td>
            <td><a href="?tag=Register_user&opr=upd&rs_id=<?php echo $row['u_id'];?>" title="Update"><img src="picture/update.png" /></a></td>
            <td>
          <a href="?tag=view_man&opr=del&rs_id=<?php echo $row['u_id'];?>" title="Delete"><img src="picture/delete.png" /></a>
		  </td>
        </tr>
    <?php	
    }
	// ----- for search studnens------	
		
	
    ?>
    </table>
</form>
</div>
</body>
</html>