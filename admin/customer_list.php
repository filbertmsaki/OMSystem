<?php 
  if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='del')
  {
    include "../db.php";
  $buyer_id=$_GET['buyer_id'];
  
  mysqli_query($con,"delete from buyer where buyer_id='$buyer_id'")or die("query is incorrect...");
  header("location: admin_home.php");
  }
?>
<div class="container-fluid">
                <div class="table-responsive ps">
                  <table class="table table-hover tablesorter table-hover">
                    <thead class="text-primary">
                      <tr><th>FirstName</th>
                      <th>LastName</th>                     
                      <th>Phone</th>
                      <th>Email</th>
                      <th>Address</th>
                      <th>Action</th>
                    </tr></thead>
                    <tbody>
                    <?php 
                        $result=mysqli_query($con,"select buyer_id, fname, lname, phone, email, address from buyer")or die ("query 2 incorrect...");

                        while(list($buyer_id,$fname,$lname,$phone,$email,$address)=
                        mysqli_fetch_array($result))
                        {
                        echo "<tr><td>$fname</td><td>$lname</td><td>$phone</td><td>$email</td><td>$address</td>";

                        echo "<td>
                        <a href='customer_list.php?buyer_id=$buyer_id&action=del' type='button' rel='tooltip' title='' class='btn btn-danger btn-link btn-sm' data-original-title='Delete Customer'>
                                <i class='material-icons'>Delete</i>
                              <div class='ripple-container'></div></a>
                        </td></tr>";
                        }
                        
                        ?>
                    </tbody>
                  </table> 
    </div>
</div>
