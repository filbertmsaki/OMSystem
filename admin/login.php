<?php
include "header.php";
?>
<div class="modal-content center" >
    <div class="modal-header">
     <font style="font-style:normal; font-size: 24px;color: #000;font-family: serif">
        Admin Login Form
    </font>	
    </div>
    <div class="modal-body">
    <div class="container-fluid">
			<form method="post" action="action.php" id="login" class="login100-form ">
			 <div class="billing-details jumbotron">
                <div class="section-title">
                 <h2 class="login100-form-title" >Login Here</h2>
                </div>
                <div class="form-group">
                 <label for="email">Email</label>
                 <input class="input input-borders" type="email" name="email" placeholder="Email" id="password" required>
                </div>
               <div class="form-group">
               <label for="email">Password</label>
               <input class="input input-borders" type="password" name="password" placeholder="password" id="password" required>
                </div>
                <div class="form-group">
                <input class="primary-btn"   type="submit" Value="Login">
                </div>
</br>
                <div class="text-pad">
                  <a href="../index.php">Not an Admin? Login as Customer</a>
				</div>
             </div>
            </form>
    </div>
     </div>                            
 </div> 
<?php
include "footer.php";
?>