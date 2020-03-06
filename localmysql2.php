<?php
session_start(); 
?>
<?php 
        $diff = $_GET['courbe'];
        //$json = '{"expires_in":5180976,"access_token":"AQXzQgKTpTSjs-qiBh30aMgm3_Kb53oIf-VA733BpAogVE5jpz3jujU65WJ1XXSvVm1xr2LslGLLCWTNV5Kd_8J1YUx26axkt1E-vsOdvUAgMFH1VJwtclAXdaxRxk5UtmCWeISB6rx6NtvDt7yohnaarpBJjHWMsWYtpNn6nD87n0syud0"}';
        $json = file_get_contents('http://localhost/dbbrain1/json/PerformanceMysql.json');


        //$arr = json_decode($json, true);
        //var_dump($arr['Total physical memory: ']);

        //$var= $arr['Total physical memory: '];

       // echo $var;

        //$var1= 2;

        $json = json_decode($json,true);
        
        $i = 0;
        $var1 = array();
        $var2 = array();
        foreach($json as $v){
        $var1[$i] = $v['SUM_LOCK_TIME'];
        $var2[$i] = $v['SUM_TIMER_WAIT'];
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
                                                                        <div id="containe" style="min-width: 310px; height: 300px; margin: 0 auto"></div>

                                                                        <script>
                                                                            Highcharts.chart('containe', {
                                                                        title: {
                                                                            text: 'indicateurs'
                                                                        },
                                                                        xAxis: {
                                                                            categories: ['SUM_LOCK_TIME','SUM_TIMER_WAIT']
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
                                                                            name: 'SUM_LOCK_TIME',
                                                                            data: [<?php  
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
                                                                            ?>
                                                                            
                                                                            
                                                                            
                                                                            ]
                                                                        }
                                                                        , {
                                                                            type: 'column',
                                                                            name: 'SUM_TIMER_WAIT',
                                                                            data: [<?php 
                                                                            if($diff==1){
                                                                                echo $var2[0];
                                                                            }elseif($diff==2){
                                                                                echo $var2[1];
                                                                            }elseif($diff==3){
                                                                               echo $var2[2];
                                                                           }elseif($diff==4){
                                                                               echo $var2[3];
                                                                           }elseif($diff==5){
                                                                               echo $var2[4];
                                                                           }elseif($diff==6){
                                                                               echo $var2[5];
                                                                           }elseif($diff==7){
                                                                               echo $var2[6];
                                                                           }elseif($diff==8){
                                                                               echo $var2[7];
                                                                           }elseif($diff==9){
                                                                               echo $var2[8];
                                                                           }elseif($diff==10){
                                                                            echo $var2[9];
                                                                        }
                                                                            ?>
                                                                            
                                                                            ]
                                                                        },
                                                                        {
                                                                            type: 'pie',
                                                                        
                                                                            data: [{
                                                                            name: 'SUM_LOCK_TIME',
                                                                            y: 2,
                                                                            color: Highcharts.getOptions().colors[0] 
                                                                            }, {
                                                                            name: 'SUM_TIMER_WAIT',
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
