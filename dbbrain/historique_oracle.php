<?php
$conn = mysqli_connect("localhost", "root", "", "historique") or die("Connection Error: " . mysqli_error($conn));


$time_h= "INTERVAL 5 min " ;
$query = ("SELECT *  FROM historical_data WHERE register_data > SUBTIME('NOW()', '$time_h')"); 
$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

$i = 0;
$var = array();
$var1 = array();
$var2 = array();


$v = array ();
//while($row = mysqli_fetch_array($result)) { 
$i=0;
$row = mysqli_fetch_row($result);
$num    =    mysqli_num_rows($result);

for ($i=0; $i<=$num;$i++) {
    $pointeur = mysqli_data_seek($result,$i); 
    $var[$i] = $row [0];
    $var2[$i]= $row [2];
    $var3[$i]= $row [3];
    $var4[$i]= $row [4];
    $var5[$i]= $row [5];
    $var6[$i]= $row [6];

    echo  $var[$i];
    print "<pre>";
}


//$var1[$i]= $row [1];
$var2[$i]= $row [2];
$var3[$i]= $row [3];
$var4[$i]= $row [4];
$var5[$i]= $row [5];
$var6[$i]= $row [6];

//}






?>
</body>


</html>
