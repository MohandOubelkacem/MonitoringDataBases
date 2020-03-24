<?php
session_start(); 
?>
<?php 
        //$json = '{"expires_in":5180976,"access_token":"AQXzQgKTpTSjs-qiBh30aMgm3_Kb53oIf-VA733BpAogVE5jpz3jujU65WJ1XXSvVm1xr2LslGLLCWTNV5Kd_8J1YUx26axkt1E-vsOdvUAgMFH1VJwtclAXdaxRxk5UtmCWeISB6rx6NtvDt7yohnaarpBJjHWMsWYtpNn6nD87n0syud0"}';
        $json = file_get_contents('http://localhost/dbbrain1/json/osserveur.json');
        //$json1 = file_get_contents('C:\wamp64\www\CoolAdmin-master\json\Indicateurs.json');


        //$arr = json_decode($json, true);
        //var_dump($arr['Total physical memory: ']);

        //$var= $arr['Total physical memory: '];

       // echo $var;

        //$var1= 2;

        $json = json_decode($json,true);
        //$json1 = json_decode($json1,true);

    
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
   

        <canvas id="myChart"></canvas>

        <script>

 var ctx = document.getElementById('myChart').getContext('2d');
        var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'line',

        // The data for our dataset
        data: {
            labels: [
                <?php
            foreach($json as $id=>$reference) 
                { 
                echo '"'.$id.'",'; 
                } 
        
                ?>          
                ],
            datasets: [{
                label: "OS Data",
                backgroundColor: 'rgb(255, 99, 132)',
                borderColor: 'rgb(255, 99, 132)',
                data: [<?php
            foreach($json as $id=>$reference) 
                { 
                echo $reference.','; 
                } 
        
                ?>],
            }]
        },

        // Configuration options go here
        options: {}
        });
       

        </script>
</body>

</html>
<!-- end document-->
