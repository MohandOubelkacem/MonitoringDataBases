<?php
session_start(); 
?>
<?php 
$diff = $_GET['courbe'];
//$json = '{"expires_in":5180976,"access_token":"AQXzQgKTpTSjs-qiBh30aMgm3_Kb53oIf-VA733BpAogVE5jpz3jujU65WJ1XXSvVm1xr2LslGLLCWTNV5Kd_8J1YUx26axkt1E-vsOdvUAgMFH1VJwtclAXdaxRxk5UtmCWeISB6rx6NtvDt7yohnaarpBJjHWMsWYtpNn6nD87n0syud0"}';
$json = file_get_contents('http://localhost/dbbrain1/json/crre.json');
$json1 = file_get_contents('http://localhost/dbbrain1/json/Indicateurs.json');


//$arr = json_decode($json, true);
//var_dump($arr['Total physical memory: ']);

//$var= $arr['Total physical memory: '];

// echo $var;

//$var1= 2;

$json = json_decode($json,true);
$json1 = json_decode($json1,true);



$i = 0;
$var = array();
$var1 = array();
foreach($json1 as $v){
$var[$i] = $v['calls'];
$var1[$i] = $v['total_time'];
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
                                                                                <div id="container" style="min-width: 310px; height: 300px; margin: 0 auto"></div>
                                                                                    <script>
                                                                                    Highcharts.chart('container', {
                                                                                title: {
                                                                                    text: 'indicateurs'
                                                                                },
                                                                                xAxis: {
                                                                                    categories: ['calls','total_time']
                                                                                },
                                                                                labels: {
                                                                                    items: [{
                                                                                    // html: 'Comparaison',
                                                                                    style: {
                                                                                        left: '20px',
                                                                                        top: '8px',
                                                                                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
                                                                                    }
                                                                                    }]
                                                                                },
                                                                                series: [
                                                                                    {
                                                                                    type: 'column',
                                                                                    name: 'calls',
                                                                                    data: [<?php                                                                       
                                                                            
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
                                                                                }
                                                                                   
                                                                                   ?>
                                                                                    
                                                                                    
                                                                                    
                                                                                    ]
                                                                                }
                                                                                , {
                                                                                    type: 'column',
                                                                                    name: 'total_time',
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
                                                                                    }
                                                                                    
                                                                                    ?>
                                                                                    
                                                                                    ]
                                                                                },
                                                                                {
                                                                                    type: 'pie',
                                                                                
                                                                                    data: [{
                                                                                    name: 'calls',
                                                                                    y: 2,
                                                                                    color: Highcharts.getOptions().colors[1] 
                                                                                    }, {
                                                                                    name: 'total_time',
                                                                                    y: 23,
                                                                                    color: Highcharts.getOptions().colors[0] 
                                                                                    }],
                                                                                    center: [20, 20],
                                                                                    size: 70,
                                                                                    showInLegend: false,
                                                                                    dataLabels: {
                                                                                    enabled: false
                                                                                    }
                                                                                }]
                                                                                });


                                                                                    </script>
</body>

</html>
<!-- end document-->
