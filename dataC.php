<?php 
        //$json = '{"expires_in":5180976,"access_token":"AQXzQgKTpTSjs-qiBh30aMgm3_Kb53oIf-VA733BpAogVE5jpz3jujU65WJ1XXSvVm1xr2LslGLLCWTNV5Kd_8J1YUx26axkt1E-vsOdvUAgMFH1VJwtclAXdaxRxk5UtmCWeISB6rx6NtvDt7yohnaarpBJjHWMsWYtpNn6nD87n0syud0"}';
        $json = file_get_contents('http://localhost:8888/Projetdatabase1.0/page/Json/crre.json');

        //$arr = json_decode($json, true);
        //var_dump($arr['Total physical memory: ']);

        //$var= $arr['Total physical memory: '];

       // echo $var;

        //$var1= 2;

        $json = json_decode($json,true);
    
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Database</title>
    <!-- Bootstrap -->
	<link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="../js/index.js" rel="stylesheet">
    <link href="../bootstrap/css/jquery.datetimepicker.css" rel="stylesheet"> 
    <link href="../bootstrap/css/ jquery.datetimepicker.min.css" rel="stylesheet"> 
  
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<style>
#d {
    width: 80px;
    height: 90px;
   
    position: absolute;
   
      right:85%;
      animation-fill-mode: forwards;
      animation-delay: 1s;
    -webkit-animation-duration: 2s;
    -webkit-animation-iteration-count: 1s;
    -webkit-animation-direction: normal;
   
    -moz-animation-name: chgt-couleur; 
    -moz-animation-duration: 3s;
    -moz-animation-iteration-count:1s;
    -moz-animation-direction: normal;
    animation-name: chgt-couleur;
    animation-duration: 3s;
    animation-iteration-count: 1s;
    animation-direction: normal; 
}
#arret {
  animation-play-state: paused;
}
@keyframes masuperanimation {
    0% {
        transform: translateX(0px);
    }

    50% {
        transform: translateX(650px);
    }

    100% {
        transform: translateX(650px) rotate(30deg);
    }
}


@keyframes masuperanimation {
    0% {
        transform: translateX(0px);
    }

    50% {
        transform: translateX(650px);
    }

    100% {
        transform: translateX(650px) rotate(30deg);
    }
}
@keyframes masuperanimation12 {
    0% {
        transform: translateX(0px);
    }

    50% {
        transform: translateX(0px);
    }

    100% {
        transform: translateX(0px) rotate(30deg);
    }
}
@keyframes masuperanimation1 {
    0% {
        transform: translateX(0px);
    }

    50% {
        transform: translateX(0px);
    }

    100% {
        transform: translateX(0px) rotate(-30deg);
    }
}

#d
{  
    animation: masuperanimation 2s; /* On utilise "ma super animation" définie plus tôt */
    animation-fill-mode: forwards;
animation-delay: 1s;
}
#d1
{  
    animation: masuperanimation1 2s; /* On utilise "ma super animation" définie plus tôt */
    animation-fill-mode: forwards;
animation-delay: 1s;
}

#d12
{  
    animation: masuperanimation12 2s; /* On utilise "ma super animation" définie plus tôt */
    animation-fill-mode: forwards;
animation-delay: 1s;
}
#m {
    width: 80px;
    height: 90px;
     left:100%;
    position: relative;
    animation-fill-mode: forwards;
     animation-delay: 1s;
    /* Chrome, Safari, Opera */
    -webkit-animation-duration: 2s;
    -webkit-animation-iteration-count: 1s;
    -webkit-animation-direction: reverse;

   -moz-animation-name: chgt-couleur;  Mozilla 
    -moz-animation-duration: 3s;
    -moz-animation-iteration-count: 1s;
    -moz-animation-direction: reverse;
    animation-name: chgt-couleur;
    animation-duration: 3s;
    animation-iteration-count: 1s;
    animation-direction: reverse;
}
#p{
  position: absolute;
 right:0%;
 text-align:center;

}



/*Pour Chrome, Safari et Opéra*/
@-webkit-keyframes chgt-couleur {
    0% {background-color: white; top: 0px; left: 0px}
    25% {background-color: white; top: 0px; left: 300px}
   
}

/*Pour Mozilla*/
@moz-keyframes chgt-couleur{
    0% {background-color: white; top: 0px; left: 0px}
    25% {background-color:white ; top: 0px; left: 300px}
    
}

/*Syntaxe standard*/
@keyframes chgt-couleur {
    0% {background-color: white; top: 0px; left: 0px}
    25% {background-color: white; top: 0px; left: 300px}
    </style>
    <style>
#i {
   -webkit-animation-name: spinner; 
  -webkit-animation-timing-function: linear; 
  -webkit-animation-iteration-count: infinite; 
  -webkit-animation-duration: 12s;
  -webkit-animation-delay: 1s; /* Chrome, Safari, Opera */
  animation-delay: 1s;
  animation-name: spinner; 
  animation-timing-function: linear; 
  animation-iteration-count: infinite; 
  animation-duration: 12s; 
  -webkit-transform-style: preserve-3d; 
  -moz-transform-style: preserve-3d; 
  -ms-transform-style: preserve-3d; 
  transform-style: preserve-3d;
}


/* WebKit and Opera browsers */ 
@-webkit-keyframes spinner { 
  from 
  { 
    -webkit-transform: rotateY(0deg); 
    top: 0px; left: 300px
  } 
  to { 
    -webkit-transform: rotateY(-360deg); 
  } 
} 
/* all other browsers */ 
@keyframes spinner { 
   from { 
    -moz-transform: rotateY(0deg); 
    -ms-transform: rotateY(0deg); 
    transform: rotateY(0deg); 
   } 
   to 
   { 
    -moz-transform: rotateY(-360deg); 
    -ms-transform: rotateY(-360deg); 
    transform: rotateY(-360deg); 

   } 
}
</style>
  </head>
  <body>
   
    <div class="container-fluid header">
     <div class="row-fluid header">
      <div class="col-lg-1">
   <p> <img src="../bootstrap/img/logo2.jpg" class="img-circle img-rounded" width="100" height="100" alt=""/></p>
     </div>
                  <div class="col-lg-11">
         <nav class="navbar navbar">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#inverseNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
        <a class="navbar-brand" href="#"></a></div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="inverseNavbar1">
        <ul class="nav navbar-nav">
          <li><a href="home.php">Home</a></li>
           <li><a href="databases.html">Databases</a></li>
           <li><a href="dashboard.html">Dashboard & Rapport</a></li>
            <li><a href="application.html">Application</a></li>
            <li><a href="activity.html">Activity</a></li>
            <li><a href="liveview.html">Liveview</a></li>
            <li><a href="ms-sql.html">Queries</a></li>
            <li><a href="objetbrower.html">Objet Brower</a></li>
              
        </ul>
     
        <ul class="nav navbar-nav navbar-right">
        </ul>
        
         <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Datetimepicker <input type="text" id="datetimepicker" /></a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Custom<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Standard</a></li>
                <li><a href="#">5 min</a></li>
                <li><a href="time_database-15mn.html">15 min</a></li>
                <li><a href="#">30 min</a></li>
                <li class="divider"></li>
                <li><a href="#">1 hour</a></li>
                 <li><a href="#">2 hour</a></li>
                  <li><a href="#">3 hour</a></li>
                   <li><a href="#">4 hour</a></li>
                    <li><a href="#">5 hour</a></li>
                     <li><a href="#">6 hour</a></li>
                      <li><a href="#">7 hour</a></li>
                       <li><a href="#">8 hour</a></li>
                        <li><a href="#">9 hour</a></li>
                         <li><a href="#">10 hour</a></li>
                          <li><a href="#">11 hour</a></li>
                           <li><a href="#">12 hour</a></li>
                           <li class="divider"></li>
                            <li><a href="#">1 day</a></li>
                            <li><a href="#">2 days</a></li>
                            <li><a href="#">3 days</a></li>
                            <li><a href="#">4 days</a></li>
                            <li><a href="#">5 days</a></li>
                            <li><a href="#">6 days</a></li>
                            <li><a href="#">7 days</a></li>
                            <li><a href="#">8 days</a></li>
                            <li><a href="#">9 days</a></li>
                            <li><a href="#">10 days</a></li>
                            <li><a href="#">11 days</a></li>
                            <li><a href="#">12 days</a></li>
                            <li><a href="#">13 days</a></li>
                            <li><a href="#">14 days</a></li>
                            <li><a href="#">15 days</a></li>
                            <li><a href="#">16 days</a></li>
                            <li><a href="#">17 days</a></li>
                            <li><a href="#">18 days</a></li>
                            <li><a href="#">19 days</a></li>
                            <li><a href="#">20 days</a></li>
                            <li><a href="#">21 days</a></li>
                            <li><a href="#">22 days</a></li>
                            <li><a href="#">23 days</a></li>
                            <li><a href="#">24 days</a></li>
                            <li><a href="#">25 days</a></li>
                            <li><a href="#">26 days</a></li>
                            <li><a href="#">27 days</a></li>
                            <li><a href="#">28 days</a></li>
                            <li><a href="#">29 days</a></li>
                            <li><a href="#">30 days</a></li>
                            <li><a href="#">31 days</a></li>
                            
                           <li class="divider"></li>
                            <li><a href="#">1 year</a></li>
                            
              </ul>
            </li>
            
          </ul>
      </div>
      <!-- /.navbar-collapse -->
    <!-- /.container-fluid -->
  </nav>  
    
  </div>
     
      </div>
      
   </div>
     
   <div class="container-fluid">
      <div class="row-fluid">
      <ol class="breadcrumb">
      <h4>Database View</h4> </ol>

  
      
     </div>
     </div>
     
<ul class="nav nav-tabs">
  
     <li class="active"><a data-toggle="tab" href="#rootcauseanalysis">Root cause analysis</a></li>
    <li><a data-toggle="tab" href="#DataBasesInfo">DataBases Info</a></li>

    <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>

<li><div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Time in database
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">Name</a></li>
    <li><a href="#">Load</a></li>
    <li><a href="time_database.html" target="_blank">Tme in database</a></li>
    <li><a href="#">Health</a></li>
    <li><a href="#">Type</a></li>
  </ul>
</div></li>
  
  
  </ul>
  
  

      <div class="tab-content">
          <div id="rootcauseanalysis" class="tab-pane fade in active">
 
  <h3>Root cause analysis</h3>
     <div class="container-fluid">
     <div class="row-fluid">
      <div class="col-lg-1 col-sm-12 text-center">
     
      <img src="image/fleche.gif"  width="50" height="40" alt=""id="d12" />
      <img src="image/fleche.gif"  width="50" height="40" alt="" />
      <img src="image/fleche.gif"  width="50" height="40" alt=""id="d1" /><br><br><br><br><br><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br><br><br><br><br><br><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d1"/><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" />
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d12"/>
           
      </div>
      <div class="col-lg-2 col-sm-12 text-center">
   <img src="image/pc.jpg" class="img-circle img-rounded" width="150" height="150" alt="" /><br><br><br>
   <img src="image/pc.jpg" class="img-circle img-rounded" width="180" height="150" alt="" /><br><br><br><br>
   <img src="image/pc.jpg" class="img-circle img-rounded" width="150" height="150" alt=""  />
      </div>
      <div class="col-lg-3 col-sm-12 text-center ">
      <img src="image/arrow.jpg"  width="50" height="70" alt="" id="d"/><br><br><br>
      <div id="arret"></div>
      <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m" /><br><br><br>
       
      <img src="image/arrow.jpg"  width="50" height="70" alt="" id="d"/><br><br><br>
      <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m"/><br><br><br>
      <img src="image/arrow.jpg"  width="50" height="70" alt="" id="d"/><br><br><br>
      <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m"/><br><br><br>
      </div>
  
  
     </div>
     <div class="col-lg-6 col-sm-13 text-center"><br><br><br><br><br><
      <img src="image/disque.png"    width="250" height="350" alt="" id="p"/>
      </div>
      
</div></div>
                                                                                                                                                                             

  
        <div id="DataBasesInfo" class="tab-pane fade">
   <h3>DataBases Info</h3>
     <div class="container-fluid">
     <div class="row-fluid">
     <div class="col-lg-6 col-sm-12 text-center">
     <canvas id="myChart"></canvas>
    </div>
 </div>
    </div>
    </div>
     
     </div>

   

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
        label: "My First dataset",
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
	<div class="footer">
  <p>Copyright © DbBrain - all rights reserved</p>
</div>
 
 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="../bootstrap/js/jquery-1.11.2.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed --> 
    <script src="../bootstrap/js/bootstrap.js"></script>
      <script src="../bootstrap/js/jquery.datetimepicker.full.js"></script>
    <script src="../bootstrap/js/jquery.datetimepicker.full.min.js"></script>
	<script>
    $("#datetimepicker").datetimepicker();
    
    </script>
  </body>
</html>