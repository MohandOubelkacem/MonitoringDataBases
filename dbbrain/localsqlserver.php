<?php
session_start(); 
?>
<?php 
        $diff = $_GET['courbe'];

        $json_source = file_get_contents('http://localhost/dbbrain1/json/queries_sqlserver.json');

        //Decode the JSON and convert it into an associative array.
        $json_data = json_decode($json_source,true);

        $i = 0;
        $var = array();
        $var1 = array();
        foreach($json_data as $v){
        $var[$i] = $v['Max_worker_time'];
        $var1[$i] = $v['Max_elapsed_time'];
        $i++;
        }
    
?>
<!DOCTYPE html>
<html lang="en">

<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
</head>

<body>
 
                                                                        <script src="https://code.highcharts.com/highcharts.js"></script>
                                                                        <script src="https://code.highcharts.com/modules/series-label.js"></script>
                                                                        <script src="https://code.highcharts.com/modules/exporting.js"></script>
                                                                        <div id="containe" style="min-width: 310px; height: 300px; margin:0 auto"></div>

                                                                        <script>
                                                                            Highcharts.chart('containe', {
                                                                        title: {
                                                                            text: 'indicateurs'
                                                                        },
                                                                        xAxis: {
                                                                            categories: ['Max_worker_time','Max_elapsed_time'],
                                                                            //title: "Max of Worker and Elapsed Time"
                                                                        },
                                                                        labels: {
                                                                            items: [{
                                                                            
                                                                            style: {
                                                                                left: '30px',
                                                                                top: '10px',
                                                                                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
                                                                            }
                                                                            }]
                                                                        },
                                                                        series: [
                                                                            {
                                                                            type: 'column',
                                                                            name: 'Max_worker_time',
                                                                            data: [<?php 
                                                                            /*echo $json_data['Max_worker_time : '];*/
                                                                            if($diff==1){
                                                                                echo $var[0];
                                                                            }elseif($diff==2){
                                                                                echo $var[1];
                                                                            }elseif($diff==3){
                                                                               echo $var[2];
                                                                            }elseif($diff==4){
                                                                               echo $var[3];
                                                                            }elseif($diff==5){
                                                                                echo $var[4];
                                                                            }elseif($diff==6){
                                                                                echo $var[5];
                                                                            }elseif($diff==7){
                                                                                echo $var[6];
                                                                            }elseif($diff==8){
                                                                                echo $var[7];
                                                                            }elseif($diff==9){
                                                                                echo $var[8];
                                                                            }elseif($diff==10){
                                                                                echo $var[9];
                                                                            }
                                                                            ?>]
                                                                        }
                                                                        , {
                                                                            type: 'column',
                                                                            name: 'Max_elapsed_time',
                                                                            data: [<?php 
                                                                            /*echo $json_data['Max_elapsed_time : '];*/
                                                                            if($diff==1){
                                                                                echo $var1[0];
                                                                            }elseif($diff==2){
                                                                                echo $var1[1];
                                                                            }elseif($diff==3){
                                                                               echo $var1[2];
                                                                            }elseif($diff==4){
                                                                               echo $var1[3];
                                                                            }elseif($diff==5){
                                                                            echo $var1[4];
                                                                            }elseif($diff==6){
                                                                                echo $var1[5];
                                                                            }elseif($diff==7){
                                                                            echo $var1[6];
                                                                            }elseif($diff==8){
                                                                                echo $var1[7];
                                                                            }elseif($diff==9){
                                                                                echo $var1[8];
                                                                            }elseif($diff==10){
                                                                                echo $var1[9];
                                                                            }
                                                                            ?> ]
                                                                        },
                                                                        {
                                                                            type: 'pie',
                                                                        
                                                                            data: [{
                                                                            name: 'Max_worker_time',
                                                                            y: 2,
                                                                            color: Highcharts.getOptions().colors[0] 
                                                                            }, {
                                                                            name: 'Max_elapsed_time',
                                                                            y: 23,
                                                                            color: Highcharts.getOptions().colors[1] 
                                                                            }],
                                                                            center: [20, 20],
                                                                            size: 70,
                                                                            
                                                                            
                                                                        }]
                                                                        });


                                                                            </script>
</body>

</html>
<!-- end document-->
