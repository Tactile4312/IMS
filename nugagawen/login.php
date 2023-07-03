<?php
    session_start();
    $_SESSION['user']='';
    $_SESSION['userid']='';
    include "./config/dbconnect.php";

    $m= '';
    if(isset($_POST['submit'])){
        
        $uname= mysqli_real_escape_string($conn, $_POST['uname']);
        $pass= mysqli_real_escape_string($conn, $_POST['password']);
        
        $pass= md5($pass);

        $sql= "SELECT * FROM users WHERE u_name='$uname' and password='$pass'";
        
        $res= $conn->query($sql);

        if(mysqli_num_rows($res)==1){
            $user= mysqli_fetch_assoc($res);
            $id= $user['user_id'];
            $_SESSION['user']= $user['name'];
            $_SESSION['userid']= $user['id'];
            header('Location: index.php');
        }
        else{
            echo "<script> alert('Wrong username And Password !');window.location=login.php' </script>";
        }
    }
?>

<html>
    <head>
	    <title>Login</title>
        <link type="text/css" rel="stylesheet" href="styless.css">
		<style>
            body {
                background-size: cover; background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: 100% 100%; 
                height:100%; padding-top: 80px; 
                text-align: center;
            }
            

                .box {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 50%;
                    height: 100%;
                    z-index: 1;
                }

                img {
                    position: absolute;
                    top: 0;
                    right: 0;
                    width: 50%;
                    height: 100%;
                    object-fit: cover;
                }

                @media (max-width: 768px) {
                    .box {
                        width: 100%;
                    }

                    img {
                        width: 100%;
                    }
                }
   </style>
    </head>
    <body>
        <div class="container">
            <form method="POST" enctype="multipart/form-data">
                <div class="box bg-img">
                    <div class="content">
                        <h2>Log<span> In</span></h2>
                        <div class="forms">
                            <div class="user-input">
                                <input name="uname" type="text" class="login-input" placeholder="Username" id="name" required/>
                                <i class="fas fa-user"></i>
                            </div>
                            <div class="pass-input">
                                <input name="password" type="password" class="login-input" placeholder="Password" id="my-password" required/>
                            </div>
                        </div>

                        <button class="login-btn" type="submit" name="submit">Sign In</button>
                        <p style="color: red; padding: 20px;">
                                    <?php 
                                    if($m!='') 
                                        echo $m; 
                                ?>
                            </p>
                    </div>
                </div>
                
                <img src="./assets/images/ims.jpg" alt="">
                
            </form>
        </div>     
        <script src="https://kit.fontawesome.com/c0078485ae.js" crossorigin="anonymous"></script>
    </body>
</html>