<?php

    define('HOST', 'localhost');
    define('USER', 'root');
    define('PASSWORD', '');
    define('DB_NAME','api');

    $con =mysqli_connect(HOST,USER,PASSWORD,DB_NAME) or die('Unable to Connect');

    // if($con)
    // {
    //     echo "Connection Successful";
    // }
    // else
    // {
    //         echo "Connection Failed";
    // }
?>