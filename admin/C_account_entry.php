 
<?php
error_reporting(0);
$id="";
$opr="";
if(isset($_GET['opr']))
	$opr=$_GET['opr'];
if(isset($_GET['rs_id']))
	$id=$_GET['rs_id'];
//--------------Add data-----------------
function formatDate($val)
   {
        $arr = explode('-', $val);
        return date('d M Y', mktime(0,0,0, $arr[1], $arr[2], $arr[0]));
    }

 
if(isset($_POST['btn_sub'])){
	$uid=$_POST['uid'];
	$uid=$_POST['uid'];
	$username=$_POST['username'];
	$password=$_POST['password'];
	$role=$_POST['type'];
	$status="1";
	$change="NO";
$sql_ins=mysqli_query($conn,"INSERT INTO  account
						VALUES(
							'$uid',
							'$username',
							'$password',
							'$role',
							'$status',
							'$change'
							 NOW()
							)");
$sql2=mysqli_query($conn,"INSERT INTO account VALUES('$uid','$usernam','$password','$type','$status2')");
if($sql_ins==true && $sql2==true){
	echo "<fz>account created successfully</fz>";
	echo'<meta content="5;main.php?C_account_entry.php" http-equiv="refresh" />';
}
else
$msg="<ft>Not inserted try again</ft>";

}
//------------------update data----------
if(isset($_POST['btn_upd'])){
	$uid=$_POST['uid'];
	$username=$_POST['username'];	
	$password=md5($_POST['password']);
	$role=$_POST['type'];
	$status=$_POST['status'];
	if($role=='admin')
	{
	echo"<i><b>You can not update admin!</b></i>";
	//echo'<meta content="5;main.php?account_entry.php" http-equiv="refresh" />';
	}
	else{
	$sql_update=mysqli_query($conn,"UPDATE account SET 
						    u_id='$uid',
							username='$username' ,
							password='$password',
							role='$role',
							status='$status'
						       WHERE
							u_id='$id' 								
							");
	$sql2=mysqli_query($conn,"UPDATE account SET u_id='$uid', username='$username',password='$password', role='$role', status='$status' WHERE u_id=$id");
	if($sql_update==true && $sql2==true){
		echo "<fz>Account Updated Successfully</fz>";
		echo'<meta content="5;main.php?C_account_entry.php" http-equiv="refresh" />';
	}
        else
			echo "<ft>Update Failed</ft>"; 
}  
}
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"  type="text/css" href="css/style_entry.css" />
<link rel="stylesheet" type="text/css" href="font_teach/css/solid.css">
<link rel="stylesheet" type="text/css" href="font_teach/css/fontawesome.min.css">
<link rel="stylesheet" type="text/css" href="font_teach/css/brands.css">
<title>Teacher transfer  system</title>
</head>
<body>

<style>
ft{
	color: red;
	font-size: 20px;
}
fz{
	color: green;
	font-size: 20px;
}
#Reg_user{
	border-top:6px solid royalblue;
	border-bottom:6px solid royalblue;
	border-top-left-radius:10px;
	border-top-right-radius:10px;
		border-bottom-left-radius:10px;
	  border-bottom-right-radius:10px;
	margin-left:30px;
    padding-left:20px;
    -webkit-box-shadow: 0px 10px 13px -7px #000000, 5px 5px 15px 5px rgba(0,0,0,0); 
    box-shadow: 0px 10px 13px -7px #000000, 5px 5px 15px 5px rgba(0,0,0,0);
}
.fa-plus-circle{
	color:green;
}
.fa-check-circle{
	color:royalblue;
}
</style>

<?php

if($opr=="upd")
{
	$sql_upd=mysqli_query($conn,"SELECT * FROM  account WHERE u_id=$id");
	$rs_upd=mysqli_fetch_array($sql_upd);
	list($y,$m,$d)=explode('-',$rs_upd['dob']);
?>

<!-- for form Upadte-->

<div id="top_style">
        <div id="top_style_text">
       <b> User Update Form </b> </div>
        <!-- end of top_style_text-->
       <div id="top_style_button"> 
       		<form method="post">
              <a href="?tag=view_account"><input type="button" name="btn_view" title="View account" value="Back" id="button_view" style="width:70px;"  /></a>
             </form>
       </div><!-- end of top_style_button-->
</div><!-- end of top_style-->
<div id="style_informations">
	<form method="post" >
    	<div>
    	<table border="0" cellpadding="4" cellspacing="0">
		  <tr>
          <td style="color: blue;"><b>User ID:</b></td>
           <td>
            <input type="text" name="uid" id="textbox" value="<?php echo $rs_upd['u_id'];?>"/>
            </td>
            </tr> 
            <tr>
            <td style="color: blue"><b>User Name:</b></td>
                <td>
                	<input type="text" name="username"  id="textbox" value="<?php echo $rs_upd['username'];?> "/>
                </td>
            </tr> 
        	<tr>
            <td style="color: blue"><b>Password:</b></td>
                <td>
                	<input type="password" name="password" id="textbox" value="<?php echo $rs_upd['password'];?> "/>
                </td>
            </tr>
            
            <tr>
			<td  style="color: blue;"><b>Role:</b></td>
			<td>
				<select id="textbox" required="required" name="type" style="width: 207px; height: 30px;">
					<option value="<?php echo $rs_upd['role'];?>"><?php echo $rs_upd['role'];?></option>
					<option value="admin">admin</option>
					<option value="ebmersu">ebmersu</option>
					<option value="wmersu">wmersu</option>
					<option value="teacher">teacher</option>
            		<option value="director">director</option>
            	</select>
               </td>
             </tr>

	    <!-- <tr>
            	<td style="color: blue;"><b>User Status:</b></td>
            	<td>
                	<input type="text" name="status" id="textbox" readonly value="<?php echo $rs_upd['status'];?>"/>
                </td>

            </tr> -->
            <tr>
                <td colspan="2">
                	<input type="reset" value="Cancel" id="button-in"/>
                	<input type="submit" name="btn_upd" value="Update" id="button-in"  />
                </td>
            </tr>
			
		</table>
   </div>

    </form>

</div><!-- end of style_informatios -->

<?php	
}
else
{
?>
<!-- for form Register-->
	
<div id="top_style">
        <div id="top_style_text">
      <p style="margin-top:4px;padding-left:100px"><b> <i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp; Register user  Form</b></p>
        </div><!-- end of top_style_text-->
       <div id="top_style_button"> 
       		<form method="post">
             <a href="?tag=view_man"><input type="button" name="btn_view" title="View user" value="View" id="button_view" style="width:120px;"  /></a>
             
       		</form>
       </div><!-- end of top_style_button-->
</div><!-- end of top_style-->

<div id="style_informations">
	<form method="post">
		<div>
			<table border="0" width="385px"  id="Reg_user"cellpadding="4" cellspacing="0">
					     <tr>
            	<td style="color: black;text-align:right"><b>User ID:</b></td>
            	<td>
                	<input type="text" style="color: blue" name="uid"  id="textbox" value="<?php echo $uid;?>"/>
                </td>
            </tr>
        	<tr>
            	<td style="color: black;text-align:right"><b>First Name:</b></td>
            	<td>
                	<input type="text" style="color: blue" name="fname" pattern="[a-zA-Z]{4,14}" required x-moz-errormessage="Please Enter Letter Only Above 4 characters" title="Please Enter Letter Only Above 4 characters "   size='20%' id="textbox"/>
                </td>
            </tr>
            
            <tr>
            	<td style="color: black;text-align:right"><b>Last Name:</b></td>
            	<td>
                	<input type="text" style="color: blue" name="lname" pattern="[A-z ]{4,14}" title="Please enter a valid name."  id="textbox" required="required"/>
                </td>
            </tr>
            <tr>
            	<td style="color: black;text-align:right"><b>Age:</b></td>
            	<td>
                	<input type="text" style="color: blue" name="age" pattern="[0-9 ]{2,}" title="Please enter 2 digit no." maxlength="3" id="textbox" required="required"/>
                </td>
            </tr>
			<tr>
			<td style="color: black;text-align:right"><b>sex:</b></td>
            	<td ><select id="textbox" required="required" name="sex">
				<option value ="" selected>please select...</option>
				<option value ="male">Male</option>
				<option value ="female" >female</option>
            	</select><br></td>
                </tr>
				<tr>
            	<td style="color: black;text-align:right"><b>Woreda Code:</b></td>
                <td>
				<select  name="wcode" style="color:blue;" id="textbox" class="wcode" >
				 <option selected="selected" value="">Select Woreda</option>
				<?php
				$wcode="SELECT *FROM woreda";
				$recored=mysqli_query($conn,$wcode);
		         if($recored)
				 {
				?>
				<!--<option value=""></option>-->
		        <?php
		      while($row=mysqli_fetch_assoc($recored))
		      {
				  ?>
			 <option  value="<?php echo $row['wcode'];?>">
		    <?php echo $row["wname"];?>
		     </option>
			 <?php
				 }
				 }
		       ?>
				</select>
                </td>
            </tr>
			<tr>
			<td  style="color: black;text-align:right"><b>Role:<span class="red"></b></span></td>
			<td ><select id="textbox" required="required" name="type">
			<?php $role=array("Select role","admin","ebmersu","wmersu");
			foreach($role as $i) echo"<option value=$i>$i</option>";
			?></select><br></td>
             </tr>
			<tr>
                <td colspan="2">
                	<input type="reset" value="Cancel" id="button-in"/>
                	<input type="submit" name="btn_sub" value="Register" id="button-in"  />
                </td>
            </tr>
			</table>
		</div>
		    
	</form>
	

</div><!-- end of style_informatios -->

<?php
}
?>
<script>

</script>
</body>
</html>