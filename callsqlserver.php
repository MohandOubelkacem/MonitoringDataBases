 
<?php
session_start(); 
?>
<?php 
        $diff = $_GET['courbe'];

        $json_source = file_get_contents('http:\\localhost\dbbrain1\json\queries_sqlserver.json');

        //Decode the JSON and convert it into an associative array.
        $json_data = json_decode($json_source,true);

        $i = 0;
        $var = array();
        $var1 = array();
        foreach($json_data as $v){
        $var[$i] = $v['Max_physical_reads'];
        $var1[$i] = $v['Max_logical_reads'];
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
                                                                                    categories: ['Max_physical_reads', 'Max_logical_reads']
                                                                                    //title: "Max of Physical and Logical Reads"
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
                                                                                    name: 'Max_physical_reads',
                                                                                    data: [<?php
                                                                                /*foreach ($json_data as $id=>$reference) {
                                                                                if ($id=='Max_physical_reads'  ){
                                                                                    echo $reference; }}*/
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
                                                                                    ?> 
                                                                                 ]
                                                                                }
                                                                                , {
                                                                                    type: 'column',
                                                                                    name: 'Max_logical_reads',
                                                                                    data: [<?php
                                                                                /*foreach ($json_data as $id=>$reference) {
                                                                                if ($id=='Max_logical_reads' ){
                                                                                    echo $reference; }}*/
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
                                                                                },
                                                                                {
                                                                                    type: 'pie',
                                                                                
                                                                                    data: [{
                                                                                    name: 'Max_physical_reads',
                                                                                    y: 2,
                                                                                    color: Highcharts.getOptions().colors[0] 
                                                                                    }, {
                                                                                    name: 'Max_logical_reads',
                                                                                    y: 23,
                                                                                    color: Highcharts.getOptions().colors[1] 
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