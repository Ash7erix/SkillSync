<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
{   
    header('location:index.php');
}
else{
    if(isset($_POST['submit']))
    {
        $studentRegno=$_SESSION['login'];
        $feedback=$_POST['feedback'];
        $ret=mysqli_query($con,"insert into feedback(studentRegno,feedback) values('$studentRegno','$feedback')");
        if($ret)
        {
            echo '<script>alert("Feedback submitted Successfully !!")</script>';
            echo '<script>window.location.href="feedback.php"</script>';    
        }
        else
        {
            echo '<script>alert("Something went wrong. Please try again!")</script>';
            echo '<script>window.location.href="feedback.php"</script>';    
        }
    }
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Feedback</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
    <?php include('includes/header.php');?>
    <!-- LOGO HEADER END-->
    <?php if($_SESSION['login']!="")
    {
        include('includes/menubar.php');
    }
    ?>
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-head-line">Feedback</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading"><center><b>
                            Feedback Form
                        </b></center></div>
                        <div class="panel-body">
                            <form name="feedbackForm" method="post">
                                <div class="form-group">
                                    <label for="feedback">Your Feedback</label>
                                    <textarea class="form-control" id="feedback" name="feedback" rows="5" required></textarea>
                                </div>
                                <center><button type="submit" name="submit" class="btn btn-default">Submit Feedback</button></center>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include('includes/footer.php');?>
    <script src="assets/js/jquery-1.11.1.js"></script>
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
<?php } ?>
