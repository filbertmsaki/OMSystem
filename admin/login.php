
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Online Mobilephone Shop - OMS Admin Login</title>
		<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css"/>
		<link rel="stylesheet" href="../css/font-awesome.min.css">
		<link type="text/css" rel="stylesheet" href="../css/style.css"/>
		<link type="text/css" rel="stylesheet" href="../css/accountbtn.css"/>

    <style>
        #navigation {
          background: #DDDEE0; 
        }
        #header {
            background: #3BBDEA; 
        }
        #top-header {
            background: #3BBfff;
        }
        #footer {
            background: #3BBDEA;
            color: #1E1F29;
        }
        .body{
            background: #FFFFFF;
        }
        .center{
            margin: auto;
            width: 50%;
            padding: 2px;
        }
        .primary-btn{
            display: inline-block;
            float:right
        }
        .footer-links li a {
          color: #1E1F29;
        }
        .mainn-raised {
            margin: -7px 0px 0px;
            border-radius: 6px;
            box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
        }
        </style>

    </head>
	<body class="body">
    <header>
			<div id="top-header">
				<div class="container">					
				
				</div>
			</div>

			<div id="header">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="header-logo">
								<a href="#" class="logo">
								<font style="font-style:normal; font-size: 32px;color: aliceblue;font-family: serif">
                                        Online Mobilephone Shop
                                    </font>	
								</a>
							</div>
						</div>
					</div>					
				</div>				
			</div>
		</header>
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