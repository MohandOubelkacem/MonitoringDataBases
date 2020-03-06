 
<?php
session_start(); 
?>
<?php 
        $json_source = file_get_contents('http://localhost/dbbrain1/json/queries_sqlserver.json');

        //Decode the JSON and convert it into an associative array.
        $json_data = json_decode($json_source,true);

    
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
                                                                                    categories: ['Max_physical_reads','Max_logical_reads']
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
                                                                                    data: [<?php echo "1";?>
                                                                                    
                                                                                    
                                                                                    
                                                                                    ]
                                                                                }
                                                                                , {
                                                                                    type: 'column',
                                                                                    name: 'Max_logical_reads',
                                                                                    data: [<?php echo "0";?>
                                                                                    
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
