<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .quan{
            height: 1300px;
            background-color: rgb(243, 237, 226);
        }
        .zx{
            background-color: wheat;
            position: relative;
            top: 20px;
            height: 40px;
        }
        .zx span{
            position: relative;
            font-size: 25px;
            top: 5px;
            left: 20px;
        }
        .tc{
            position: relative;
            left: 1100px;
            top: -30px;
            height: 35px;
            border: 0px;
            background-color: wheat;
        }
        .tc:hover{
            background-color:burlywood;
        }
        .xx{
            position: relative;
            top: 100px;
            height: auto;
            width: auto;
        }
        .xx table{
            width: auto;
            height: auto;
            text-align: center;
            font-size: 30px;
        }
        .xx td{
            width: 250px;
            height: 150px;
        }
        .xg{
            position: relative;
            top: 20px;
            left: 300px;
            width: 150px;
            height: 50px;

        }
        img{
            width: 200px;
            height: 300px;
        }
        .wh{
            position: relative;
            width: 400px;
            height: 500px;
            left: 800px;
            top: -400px;
            border: 1px;
         }
        .jswh{
            list-style: none;
            width: 400px;
            display: block;
            font-size: 25px;
        }
        .mcc{
            position: relative;
            font-size: 30px;
        }
        .sjj{
            position: relative;
            font-size: 30px;
            left: 280px;
            top: -40px;
        }
        .fgx{
            background-color: wheat;
            position: relative;
            height: 40px;
            top: -300px;
        }
        .fgx span{
            position: relative;
            font-size: 25px;
            top: 5px;
            left: 20px;
        }
        .qbu{
            position: relative;
            top: -300px;
            font-size: 25px;
            overflow-x: hidden;
            height: 500px;
        }
    </style>
</head>
<body>
<?php
         session_start();
         $user=$_SESSION['user'];
         $servername='localhost';
         $username='root';
         $password='123456';
         $dbname='tsg';
         $con=new mysqli($servername,$username,$password,$dbname);
         $sql="SELECT * FROM denglu ".
				"WHERE ??????='$user' ";
                $res=mysqli_query($con,$sql);
                $row=mysqli_fetch_assoc($res);
    ?>
    <div class="quan">
    <div class="zx">
        <span>????????????</span>
        <form action="grzx.php" method="post">
            <input type="submit" name="tc" value="????????????" class="tc"/>
            <?php 
                if(isset($_POST['tc'])){
                    echo "<script language=\"javascript\">window.open ('index.html', '_parent')</script>";
                }
            ?>
        </form>
    </div>
    <div class="xx">
        <table border="1" cellspacing='0px' width='200px'>
            <tr>
                <td colspan='2' rowspan="2"><img src="./yonghu/<?php echo $row['??????'] ?>" alt=""></td>
                <!-- <td>1</td> -->
                <td>??????:</td>
                <td><?php echo $row['??????'] ?></td>
            </tr>
            <tr>
                <!-- <td>??????</td> -->
                <!-- <td>1</td> -->
                <td>??????:</td>
                <td><?php echo $row['??????'] ?></td>
            </tr>
            <tr>
                <td rowspan="2">????????????:</td>
                <td colspan="3" rowspan="3"><?php echo $row['????????????'] ?></td>
                <!-- <td>1</td> -->
                <!-- <td>1</td> -->
            </tr>
            <tr>
                <!-- <td>????????????</td> -->
                <!-- <td>1</td> -->
                <!-- <td>1</td> -->
                <!-- <td>1</td> -->
            </tr>
        </table>
        <form action="xiugai.php" method="post">
        <input type="submit" name="xg" value="????????????" class="xg"/>
        <?php 
                if(isset($_POST['xg'])){
                    echo "<script language=\"javascript\">window.open ('xiugai.php', '_parent')</script>";
                }
            ?>
        </form>
    </div>
    <div class="wh">
        <div class="mcc">????????????</div>
        <div class="sjj">????????????</div>
        <?php
            session_start();
            $user=$_SESSION['user'];
            $servername='localhost';
            $username='root';
            $password='123456';
            $dbname='tsg';
            $con=new mysqli($servername,$username,$password,$dbname);
            $sql="SELECT * FROM jieshu where ?????????='$user' && ??????='??????' ORDER BY `??????` ASC LIMIT 0,3";
                   $res=mysqli_query($con,$sql);
                   while($row=mysqli_fetch_assoc($res))
        {
        ?>
            <ul class="jswh">
            <li><?php echo $row['????????????'] ?></li>
            <li><?php echo $row['??????'] ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $row['??????'] ?></li>
            <hr>
        </ul>
        <?php
        }
        ?>
    </div>
    <div class="fgx">
        <span>????????????</span>
    </div>
    <div class="qbu">
        <?php
    session_start();
            $user=$_SESSION['user'];
            $servername='localhost';
            $username='root';
            $password='123456';
            $dbname='tsg';
            $con=new mysqli($servername,$username,$password,$dbname);
            $sql="SELECT * FROM jieshu where ?????????='$user'";
                   $res=mysqli_query($con,$sql);
                   while($row=mysqli_fetch_assoc($res))
        {
        ?>
            <ul>
            <li><?php echo $row['????????????'] ?></li>
            <li><?php echo $row['??????'] ?></li>
            <hr>
        </ul>
        <?php
        }
        ?>
    </div>
    </div>
</body>
</html>