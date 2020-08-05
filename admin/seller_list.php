<?php

if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
    
$seller_id=$_GET['seller_id'];

mysqli_query($con,"delete from seller where seller_id='$seller_id'")or die("query is incorrect...");
header("location: admin_home.php#sellers");
}

?>
<div class="container-fluid">
                <div class="table-responsive ps">
                  <table class="table table-hover tablesorter table-hover">
                    <thead class="text-primary">
                      <tr><th>FirstName</th>
                      <th>LastName</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Address</th>
                      <th>Action</th>
                    </tr></thead>
                    <tbody>
                    <?php 
                        $result=mysqli_query($con,"select seller_id, fname, lname, email, phone, address from seller")or die ("query 2 incorrect...");

                        while(list($seller_id,$fname,$lname,$email,$phone,$address)=
                        mysqli_fetch_array($result))
                        {
                        echo "<tr><td>$fname</td><td>$lname</td><td>$email</td><td>$phone</td><td>$address</td>";

                        echo"<td>
                        <a href='editseller.php?seller_id=$seller_id' type='button' rel='tooltip' title='' class='btn btn-info btn-link btn-sm' data-original-title='Edit Seller'>
                                <i class='material-icons'>Edit</i>
                              <div class='ripple-container'></div></a>
                        <a href='seller_list.php?seller_id=$seller_id&action=delete' type='button' rel='tooltip' title='' class='btn btn-danger btn-link btn-sm' data-original-title='Delete Seller'>
                                <i class='material-icons'>Delete</i>
                              <div class='ripple-container'></div></a>
                        </td></tr>";
                        }
                        
                        ?>
                    </tbody>
                  </table> 
                  </div>
        </div>
       