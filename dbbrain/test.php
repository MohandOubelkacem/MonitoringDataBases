<?php

// Les crochets qui délimitent le JSON indiquent qu'il s'agit d'une collection de données
$json1 = file_get_contents('C:\wamp64\www\CoolAdmin-master\json\Indicateurs.json');

// On va boucler sur un tableau
$json1 = json_decode($json1, true);
$i = 0;
$var = array();
foreach($json1 as $v){
  $var[$i] = $v['queryid'];
  $i++;
}

echo $var[2];


?>

