<?php
include "header.php";

$seller_id=$_REQUEST['seller_id'];
$result=mysqli_query($con,"select seller_id,fname,lname, email, phone, address, password from seller where seller_id='$seller_id'")or die ("query 1 incorrect...");
list($seller_id,$fname,$lname,$email,$phone,$address, $password)=mysqli_fetch_array($result);

if(isset($_POST['btn_update'])) 
{
$f_name=$_POST['fname'];
$l_name=$_POST['lname'];
$email=$_POST['email'];
$mobile=$_POST['mobile'];
$address=$_POST['address'];
$password=$_POST['password'];

mysqli_query($con,"update seller set fname='$fname', lname='$lname', email='$email', phone='$mobile', address='$address' password='$password' where seller_id='$seller_id'")or die("Query 2 is incorrect...");

header("location: admin_home.php");
mysqli_close($con);
}
?>
      <div class="main main-raised">       
		<div class="section">
			<div class="container">
				<div class="row">
	<div id="aside" class="col-md-2" style="background:#3BBfff">
        <ul class="nav">
          <li class="nav-item"><a class="nav-link active"  href="admin_home.php">Dashboard</a></li>
          <li class="nav-item"><a data-toggle="tab" href="#orders">Order List</a></li>
          <li class="nav-item"><a data-toggle="tab" href="#products">Product List</a></li>
          <li class="nav-item"><a data-toggle="tab" href="#customers">Customer List</a></li>
        </ul>					
	</div>

	<div class="col-md-10">
  <ul class="nav nav-tabs">
          <li class="nav-item"><a class="nav-link active" href="admin_home.php">Home</a></li>
        </ul>	
        <div class="container-fluid">
        <h3 style="text-align:center">Manage Sellers</h3>
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" name="form" method="post" enctype="multipart/form-data">
              <div class="card-body">              
                  <input type="hidden" name="seller_id" id="user_id" value="<?php echo $seller_id;?>" />
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>First name</label>
                        <input type="text" id="first_name" name="fname"  class="form-control" value="<?php echo $fname; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>Last name</label>
                        <input type="text" id="last_name" name="lname" class="form-control" value="<?php echo $lname; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email"  id="email" name="email" class="form-control" value="<?php echo $email; ?>">
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Phone No</label>
                        <input type="number"  id="mobile" name="mobile" class="form-control" value="<?php echo $phone; ?>">
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Address</label>
                        <input type="text"  id="address" name="address" class="form-control" value="<?php echo $address; ?>">
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label >Password</label>
                        <input type="text" name="password" id="password" class="form-control" value="<?php echo $password; ?>">
                      </div>
                    </div>
               
              </div>
              <div class="card-footer">
                <button type="submit" id="btn_update" name="btn_update" class="btn btn-fill btn-primary">Update</button>
              </div>
              </form>
        </div>
	</div>
	</div>
	</div>
	</div>
</div>
<?php
include "footer.php";
?>