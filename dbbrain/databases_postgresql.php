<?php
session_start(); 
?>
<?php
 
              //$json = '{"expires_in":5180976,"access_token":"AQXzQgKTpTSjs-qiBh30aMgm3_Kb53oIf-VA733BpAogVE5jpz3jujU65WJ1XXSvVm1xr2LslGLLCWTNV5Kd_8J1YUx26axkt1E-vsOdvUAgMFH1VJwtclAXdaxRxk5UtmCWeISB6rx6NtvDt7yohnaarpBJjHWMsWYtpNn6nD87n0syud0"}';
              $json = file_get_contents('http://localhost/dbbrain1/json/DonneePostgreSql.json');
              $json1 = file_get_contents('http://localhost/dbbrain1/json/IndicateursG.json');
              $json2 = file_get_contents('http://localhost/dbbrain1/jsons/collision.json');
              $arr = json_decode($json, true);
              $donne = json_decode($json1, true);
              $json2 = json_decode($json2, true);
             // var_dump($arr['Total physical memory: ']);

              $var = array_sum($arr);
      
              //echo $var;
      
              //$var1= 2;
      
              //$json = json_decode($json,true);
      
              //$var = "";
              // foreach($json as $id=>$reference) 
             //    { 
          //    $var = $var + $reference;
           //   }   
 
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>PostgresqlDatabases</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

    <!-- chart js-->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	legend:{
		cursor: "pointer",
		itemclick: explodePie
	},
	data: [{
		type: "pie",
		showInLegend: true,
		toolTipContent: "{name}: <strong>{y}</strong>",
		indexLabel: "{name} {y}",
		dataPoints: [
			{ y: <?php echo $var;?>, name: "Disk Usage", exploded: true },
			{ y: 1023, name: "Disk Free Space"}
		]
	}]
});
chart.render();
}

function explodePie (e) {
	if(typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
		e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
	} else {
		e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
	}
	e.chart.render();

}
</script>

<style>
    #d {
        width: 60px;
        height: 50px;
    
        position: absolute;
    
        right:55%;
        animation-fill-mode: forwards;
        animation-delay: 1s;
        -webkit-animation-duration: 1s;
        -webkit-animation-iteration-count: 1s;
        -webkit-animation-direction: normal;
    
        -moz-animation-name: chgt-couleur; 
        -moz-animation-duration: 1s;
        -moz-animation-iteration-count:1s;
        -moz-animation-direction: normal;
        animation-name: chgt-couleur;
        animation-duration: 1s;
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
            transform: translateX(350px);
        }

        100% {
            transform: translateX(350px) rotate(30deg);
        }
    }


    @keyframes masuperanimation {
        0% {
            transform: translateX(0px);
        }

        50% {
            transform: translateX(350px);
        }

        100% {
            transform: translateX(350px) rotate(30deg);
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
        width: 60px;
        height: 50px;
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

<body class="animsition">
<div class="page-wrapper">
		<!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="dashboard.php">
                            <img src="image/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="dashboard.php">
                                <i class="fas fa-tachometer-alt"></i>Home</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-chart-bar"></i>Databases</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-table"></i>Dashboard & Rapport</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="far fa-check-square"></i>Application</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-calendar-alt"></i>Activity</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-map-marker-alt"></i>Liveview</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>Objet Brower</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->
        
        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="image/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li>
                            <a class="js-arrow" href="dashboard.php">
                                <i class="fas fa-tachometer-alt"></i>Home</a>
                        </li>
                        <li  class="active has-sub">
                            <a href="#">
                                <i class="fas fa-chart-bar"></i>Databases</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-table"></i>Dashboard & Rapport</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="far fa-check-square"></i>Application</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-calendar-alt"></i>Activity</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-map-marker-alt"></i>Liveview</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>Objet Brower</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
        
        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <div class="header-button">
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="content">
                                            <a class="js-acc-btn" href="#"><?php echo $_SESSION['username']; ?></a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#"><?php echo $_SESSION['username']; ?></a>
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-account"></i>Account</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-settings"></i>Setting</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-money-box"></i>Billing</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="index.php">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                    <div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h4>Database Postgresql</h4>
									</div>
									<div class="card-body">
										<div class="default-tab">
											<nav>
												<div class="nav nav-tabs" id="nav-tab" role="tablist">
													<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home"
													 aria-selected="true">Postgresql</a>
													<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-data" role="tab" aria-controls="nav-profile"
                                                     aria-selected="false">Root cause analysis</a>
												</div>
											</nav>
											<div class="tab-content pl-3 pt-2" id="nav-tabContent">
												<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <a href="data_root_postgresql.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 1</h3>
                                                                <div id="chartContainer" style="height: 200px; width: 300px;"></div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <!--<div class="col-lg-4">
                                                        <a href="data_root.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 2</h3>
                                                                <canvas id="pieChart1"></canvas>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <a href="data_root.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 3</h3>
                                                                <canvas id="pieChart2"></canvas>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <a href="data_root.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 4</h3>
                                                                <canvas id="pieChart3"></canvas>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <a href="data_root.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 5</h3>
                                                                <canvas id="pieChart4"></canvas>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <a href="data_root.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 6</h3>
                                                                <canvas id="pieChart5"></canvas>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <a href="data_root.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 7</h3>
                                                                <canvas id="pieChart6"></canvas>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <a href="data_root.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 8</h3>
                                                                <canvas id="pieChart7"></canvas>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <a href="data_root.php" class="au-card m-b-30">
                                                            <div class="au-card-inner">
                                                                <h3 class="title-2 m-b-40">Postgresql 9</h3>
                                                                <canvas id="pieChart8"></canvas>
                                                            </div>
                                                        </a>
                                                    </div>-->
                                                </div>
                                                   
												</div>
												<div class="tab-pane fade" id="nav-data" role="tabpanel" aria-labelledby="nav-profile-tab">
                                                <div class="row">
                                                        <div class="col-lg-1 col-sm-12 text-center"><br><br>

                                                        <?php 


                                                                 /* nous parcourons le fichier donne (indicateurs globaux)et json2(collision)
                                                                        on vérifie à chaque condition si la variable qu'on cherche est dans le fichier 
                                                                        si la condition est vérifie , nous la mettons dans une autre variable  
                                                                        */

                                                                            foreach ($donne as $id=>$reference) {
                                                                                if ($id=='blks_read')
                                                                                $var1 =  $reference;
                                                                                if ($id=='blks_hit')
                                                                                $var3 =  $reference;
                                                                            }
                                                                            foreach ($json2 as $id=>$reference) {
                                                                                if ($id=='collision')
                                                                                $var2 =  $reference;}
                                                                            
                                                                              /*si var2(collision) est supérieure à un seuil ici par exemple  0(on peut changer)
                                                                                        on affiche une collission 
                                                                                        */ 

                                                                            if ($var2 >= 0) 


                                                                            { 
                                                                            echo '<img src="../image/fleche.gif" width="50" height="40" alt=""id="d12" />'; 
                                                                            echo '<img src="../image/fleche.gif"  width="50" height="40" alt="" />';
                                                                            echo '<img src="../image/fleche.gif"  width="50" height="40" alt=""id="d1" /><br><br><br><br><br>';
                                                                            } 
                                                                            else //sinon on vérifie le deuxieme cas qui est session logical reads
                                                                            {  if ($var1 > 4597) 
                                                                            { 

                                                                            echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                            echo '   <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                            echo '   <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br><br><br><br><br><br>';
                                                                            }
                                                                            else
                                                                            //sinon si on vérifie le dernier cas qui est num rows(la dispersion)
                                                                            {
                                                                                if ($var3 >=  573010) 
                                                                            { 

                                                                                echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d1"/><br>';
                                                                                echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                                echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d12"/><br><br><br><br><br><br>';
                                                                            }

                                                                            }
                                                                            }





                                                                             /* on suppose que le cas de la collision on l'a traité avant 
                                                           
                                                                                   */ 

                                                                            if ($var2 < 0) 
                                                                            { 
                                                                            echo '<img src="image/fleche.gif" width="50" height="40" alt=""id="d12" />'; 
                                                                            echo '<img src="image/fleche.gif"  width="50" height="40" alt="" /><br>';
                                                                            echo '<img src="image/fleche.gif"  width="50" height="40" alt=""id="d1" /><br><br><br><br><br>';
                                                                            } 
                                                                            else 
                                                                            {  if ($var1 > 4597 ) 
                                                                            {
                                                                                 /*si var1(logical reads) est supérieure à un seuil ici par exemple 4597 (on peut changer)
                                                                                    on affiche un cas optimal 
                                                                                */  

                                                                            echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                            echo '   <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                            echo '   <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br><br><br><br><br><br>';

                                                                            }
                                                                            else
                                                                            {
                                                                                if ( $var3 >=  573010) 
                                                                            { //sinon si on vérifie le dernier cas qui est num rows(la dispersion)

                                                                                echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d1"/><br>';
                                                                                echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                                echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d12"/><br><br><br><br><br><br>';
                                                                            }

                                                                            }
                                                                            }                                                       
                                                                            
                                                                            
                                                                            
                                                                            /* on suppose que le cas de la collision on l'a traité avant 
                                                           
                                                                            */ 


                                                                            if ($var2 < 0) 
                                                                            { 
                                                                            echo '<img src="image/fleche.gif" width="50" height="40" alt=""id="d12" />'; 
                                                                            echo '<img src="image/fleche.gif"  width="50" height="40" alt="" />';
                                                                            echo '<img src="image/fleche.gif"  width="50" height="40" alt=""id="d1" /><br><br><br>';
                                                                            } 
                                                                            else 
                                                                            {  if ($var1 == 0) 
                                                                            { /* on suppose que le cas optimal on l'a traité avant 
                                                           
                                                                                */ 

                                                                            echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                            echo '   <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                            echo '   <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br><br><br><br><br><br>';
                                                                            }
                                                                            else
                                                                            { /*  si var3 est supérieure à un seuil ici par exemple 573009(on peut changer)
                                                                                on affiche un cas de dispersion( n'avons pas trouvé la dispersion sur postgres à rajouter)
                                                                                 */ 
                                                                                if ($var3 > 573009) 
                                                                            { 
                                                                            echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d1"/><br>';
                                                                            echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>';
                                                                            echo '<img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d12"/><br><br><br><br>';
                                                                            }

                                                                            }}

                                                                            ?>





                                                                                </div>
                                                                                <!--affichage des ordinateurs -->
                                                                                <div class="col-lg-2 col-sm-12 text-center"><br>
                                                                                <img src="image/PC.jpg" class="img-circle img-rounded" width="150" height="150" alt="" /><br><br><br><br>
                                                                                <img src="image/PC.jpg" class="img-circle img-rounded" width="180" height="150" alt="" /><br><br><br><br>
                                                                                <img src="image/PC.jpg" class="img-circle img-rounded" width="150" height="150" alt=""  />
                                                                                </div>

                                                                                <div class="col-lg-3 col-sm-12 text-center ">
                                                                                <img src="image/arrow.jpg"  width="20" height="40" alt="" id="d"/><br><br><br>
                                                                                <div id="arret"></div>
                                                                                <!--affichage des fleches qui va des ordinateurs à la baie disque-->
                                                                                <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m" /><br><br><br>                                             
                                                                                <img src="image/arrow.jpg"  width="50" height="70" alt="" id="d"/><br><br><br>
                                                                                <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m"/><br><br><br>
                                                                                <img src="image/arrow.jpg"  width="50" height="70" alt="" id="d"/><br><br><br>
                                                                                <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m"/><br><br><br>
                                                                                </div>
                                                                                 <!--affichage de la baie disque -->
                                                                            
                                                                                <div class="col-lg-6 col-sm-12 text-center"><br><br><br><br>
                                                                                <img src="image/disque.png" width="200" height="250" alt="" id="p"/>





                                                        
                                                        </div>
                                                        </div>
                                                </div>
											</div>

										</div>
									</div>
								</div>
							</div>

						</div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
        </div>
        <!-- END PAGE CONTAINER-->

    </div>

    <!-- canvas-->
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
