<?php
    $link = mysqli_connect("localhost","root","","store") or die("Lỗi kết nối!".mysqli_error($link)) ;
    echo ("<h4 style = 'color : red ; text-align : center ;'>Kết nối thành công </h4>") ;
?>
