<?php
require('dbconn.php');
?>


<!DOCTYPE html>
<html>

<!-- Head -->
<head>
	<title>Library Management System </title>
	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="keywords" content="Library Member Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

	<!-- Fonts -->
		<link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
	<!-- //Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>
<div id="background">
        <div id="top">
            <a href="#" class="fa fa-envelope" style="text-decoration:none;  color: White;">
                Email-  Test@gmail.com  | Contact-   +91- 0000000000  
              </a>
             
   </div>
        <div id="menu">
            <div id="logo">LIBRARY MANAGEMENT SYSTEM</b>
            </div>

			</div>

	<div class="container">

		<div class="login">
			<h2>Sign In</h2>
			<form action="index.php" method="post">
				<input type="text" Name="RollNo" placeholder="ID number" required="">
				<input type="password" Name="Password" placeholder="Password" required="">
			
			
			<div class="send-button">
				<!--<form>-->
					<input type="submit" name="signin" value="Sign In">
				</form>
			</div>
			
			<div class="clear"></div>
		</div>

		<div class="register">
			<h2>Sign Up</h2>
			<form action="index.php" method="post">
				<input type="text" Name="Name" placeholder="Name" required>
				<input type="text" Name="Email" placeholder="Email" required>
				<input type="password" Name="Password" placeholder="Password" required>
				<input type="text" Name="PhoneNumber" placeholder="Phone Number" required>
				<input type="text" Name="RollNo" placeholder="ID Number" required="">
				
				<select name="Category" id="Category" style="background-color: Black; opacity:0.6;">
					<option value="Student">Student</option>
					<option value="Faculty">Faculty</option>
					<option value="Staff">Staff</option>
					
				</select>
				<select name="Department" id="Category" style="background-color: Black; opacity: 0.6;">
					<option value="CSE">CSE</option>
					<option value="IT">IT</option>
					<option value="EE">EE</option>
					 <option value="ME">ME</option>
           <option value="Other">Other</option>
					
				</select>
				<br>
			
			
			<br>
			<div class="send-button">
			    <input type="submit" name="signup" value="Sign Up">
			    </form>
			</div>
			<p>By creating an account, you agree to our <a class="underline" href="terms1.html">Terms</a></p>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>
	<div id="slider">
            <div id="x"><b style="color: #2c7ad6;"></b>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
            <p style="font-size: 35PX;">WELCOME TO LIBRARY</p>
            </div> 



			</div>
	<div class="footer w3layouts agileits">
	<br>
	<br>
	<br>
	<br>
		
	<p> &copy; 2024 LMS Login.
		<p> Barun | Pravalesh | Danish | Priyanka | Prachi | Nikita
	 </a></p>
		
	</div>

<?php
if(isset($_POST['signin']))
{$u=$_POST['RollNo'];
 $p=$_POST['Password'];
 $c=$_POST['Category'];

 $sql="select * from LMS.user where RollNo='$u'";

 $result = $conn->query($sql);
$row = $result->fetch_assoc();
$x=$row['Password'];
$y=$row['Type'];
if(strcasecmp($x,$p)==0 && !empty($u) && !empty($p))
  {//echo "Login Successful";
   $_SESSION['RollNo']=$u;
   
if ($y == 'Admin') {
	echo header("Location:admin/index.php");

}elseif($y=='librarian'){
echo header("Location:librarian/index.php");

}elseif ($y=='Student') {
	echo header("Location:student/index.php");

}else{
	echo header('Location:staff/index.php');
}
//   if($y=='Admin')
//   echo header("Location:admin/index.php");
// elseif ($y == 'librarian') {
// echo header("Location:librarian/index.php");

// }if ($y =='student') {
// 	echo header("Location:student/index.php");
// }
//   elseif (condition) {
//   	 echo	header("Location:staff/index.php");
//   }
 
        
  }
else 
 { echo "<script type='text/javascript'>alert('Failed to Login! Incorrect IDNo or Password')</script>";
}
   

}

if(isset($_POST['signup']))
{
	$name=$_POST['Name'];
	$email=$_POST['Email'];
	$password=$_POST['Password'];
	$mobno=$_POST['PhoneNumber'];
	$rollno=$_POST['RollNo'];
	$category=$_POST['Category'];
	$department=$_POST['Department'];
	$type='Student';

	$sql="insert into LMS.user (Name,Type,Category,Department,RollNo,EmailId,MobNo,Password) values ('$name','$type','$category','$department','$rollno','$email','$mobno','$password')";

	if ($conn->query($sql) === TRUE) {
echo "<script type='text/javascript'>alert('Registration Successful')</script>";
} else {
    //echo "Error: " . $sql . "<br>" . $conn->error;
echo "<script type='text/javascript'>alert('User Exists')</script>";
}
}

?>

</body>
<!-- //Body -->

</html>
<?php 
// }
// else {
//     echo "<script type='text/javascript'>alert('System Expired')</script>";
// } 


?>