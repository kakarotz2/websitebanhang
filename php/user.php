
<?php
    include "connect.php" ;
    //Thêm dữ liệu
    $first = "" ;
    $last = "" ;
    $phone = "" ;
    $email = "" ;
    $meassage = "" ;
    if ( $_SERVER["REQUEST_METHOD"] == "POST") 
    {
        if (isset($_POST["first"]))
            $first = $_POST['first'] ;
        if ( isset($_POST["last"]))
            $last = $_POST['last'] ;
        if ( isset($_POST["phone"]))
            $phone = $_POST['phone'] ;
        if ( isset($_POST["email"]))
            $email = $_POST['email'] ;
        if ( isset($_POST["meassage"]))
            $meassage = $_POST['meassage'] ;

        $con = "insert into user(first,last,phone,email,meassage) values('$first','$last','$phone','$email','$meassage')";
        if ( mysqli_query($link,$con) )
        {
            echo "";
          
        }                  
        else 
            echo "Them du lieu that bai".mysqli_error($link);  
    }
    //Xóa dữ liệu
    if( isset($_GET["task"]) && $_GET["task"] == "delete")
    {
        $id = $_GET['id'] ;
        $delete = "delete from user where id = $id " ;
        if ( mysqli_query($link, $delete))
        {
            echo "Xoa dữ liệu thành công" ;
            // header ("Location: user.php") ;
        }
        else   
            echo "Xóa dữ liệu thất bại".mysqli_error($link);  
    }
    
    //Sửa dữ liệu
// if ( $_SERVER["REQUEST_METHOD"] == "POST") 
// {
//     if( isset($_GET["ask"]) && $_GET["ask"] == "update")
//     {   
//         if (isset($_POST["sub"]))
//         {
//             $id = $_GET['id'] ;
//             $first = $_POST['first_up'] ;
            
//             $last = $_POST['last_up'] ;
        
//             $phone = $_POST['phone_up'] ;
        
//             $email = $_POST['email_up'] ;
            
//             $update = "update user set first = '$first_up', last  = '$last_up' , phone  = '$phone_up' , email = '$email_up' , where id = '$id' " ;
//             if ( mysqli_query($link, $update))
//             {
//                 echo "update dữ liệu thành công" ;
//             }
//             else   
//                 echo "Sửa dữ liệu thất bại".mysqli_error($link); 
//         } 
//     }
// }
?>
<html>
    <head>
        <title>Trang quan tri user</title>
        <style type = "text/css">
            .admin{
                margin : 0 auto ;
                width : 700px ;
            }
            h2{
                color : red ;
            }
            tr th{
                border : 1px solid yellow ;
                padding-right : 20px ;
            }
        </style>
    </head>
    <body>
        <div class = "admin">
            <h2>Quản lí thông tin liên hệ</h2>
            <table>
                <tr>
                    <th>id</th>
                    <th>First</th>
                    <th>Last</th>
                    <th>Phone</th>
                    <th>mail</th>
                    <th>Hành động</th>
                </tr>
                <tr>
                <?php
                    $select = "select * from user" ;
                    $show = mysqli_query($link , $select) ;
                    while ( $row = mysqli_fetch_assoc($show) )
                    {
                        echo "<tr>"; 
                        echo "<td>".$row["id"]."</td>";
                        echo "<td>".$row["first"]."</td>";
                        echo "<td>".$row["last"]."</td>";
                        echo "<td>".$row["phone"]."</td>";
                        echo "<td>".$row["email"]."</td>";

                        echo "<td>".
                        "<a href=' user.php?id=".$row["id"]."&task=delete '>Xoá</a>".
                        "<a href=' update.php?id=".$row["id"]."&task=update'>Sửa</a>".
                        "</td>";
        
                    echo "</tr>" ;  
                    }
                ?>
                </tr>
            </table>
        </div>
        <!-- <form action = "user.php" method = "POST">
                <input type = "text" name = "first_up">
                <input type = "text" name = "last_up">
                <input type = "text" name = "phone_up">
                <input type = "text" name = "email_up">
                <input type = "submit" name = "sub">
            </form> -->
    </body>
</html>
    