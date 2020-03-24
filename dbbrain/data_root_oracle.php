<?php
session_start(); 
?>
<?php 
        //$json = '{"expires_in":5180976,"access_token":"AQXzQgKTpTSjs-qiBh30aMgm3_Kb53oIf-VA733BpAogVE5jpz3jujU65WJ1XXSvVm1xr2LslGLLCWTNV5Kd_8J1YUx26axkt1E-vsOdvUAgMFH1VJwtclAXdaxRxk5UtmCWeISB6rx6NtvDt7yohnaarpBJjHWMsWYtpNn6nD87n0syud0"}';
        $json1 = file_get_contents('http://localhost/dbbrain1/json/oracleDB_all_queries.json');


        //$arr = json_decode($json, true);
        //var_dump($arr['Total physical memory: ']);

        //$var= $arr['Total physical memory: '];

       // echo $var;

        //$var1= 2;

        $json1 = json_decode($json1,true);

        
        $time= "";
        $i = 0;
        $var = array();
        $var1 = array();

        foreach($json1 as $v){
        $var[$i] = $v['sql id'];
        $var1[$i] = $v['sql text'];
        $var2[$i] = $v['Elapsed time'];
        $var3[$i] = $v['Execution time'];
        $var4[$i]=$v['user time'];

        $i++;
        }
        
        $varweight = $var2;
        $i=0;
        $v=array();
        $somme = array_sum ( $varweight ) ;
        foreach ($varweight as $value) {
        $v[$i] = ($value * 100)/$somme;
        $i++;
        }
    
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
    <title>Dashboard</title>

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


    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
    <script type = "text/javascript">

    var auto_refresh = setInterval(
    function ()
    {
    $('#graph').load('databasesInfoGraphesoracle.php').fadeIn("slow");
    }, 1000);
 
    </script>

</head>

<body class="animsition" >
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
                                <i class="fas fa-desktop"></i>Objet Browerr</a>
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
        <div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
                                    	<h4>Database View Oracle</h4>
                                        <div class = "dropdown">
                                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Custom<span class="caret"></span></a>
                                            <ul class="dropdown-menu" role="menu">
                                    
                                            <li><a href="#">Standard</a></li>
                                            <li><a href="ajax.php?time=5 minute">5 min <?php $time="5 minute"?> </a></li>
                                            <li><a href="ajax.php?time=15 minute">15 min <?php $time="15 min"?></a></li>
                                            <li><a href="ajax.php?time=30 minute">30 min <?php $time="30 min"?></a></li>
                            
                                            <li class="divider"></li>
                                            <li><a href="ajax.php?time=1 hour">1 hour <?php $time="1 hour"?></a></li>
                                            <li><a href="ajax.php?time=2 hour">2 hour <?php $time="2 hour"?></a></li>
                                            <li><a href="ajax.php?time=3 hour">3 hour <?php $time="3 hour"?></a></li>
                                            <li><a href="ajax.php?time=4 hour">4 hour <?php $time="4 hour"?></a></li>
                                                <li><a href="ajax.php?time=5 hour">5 hour <?php $time="5 hour"?></a></li>
                                                <li><a href="ajax.php?time=6 hour">6 hour <?php $time="6hour"?></a></li>
                                                <li><a href="ajax.php?time=7 hour">7 hour <?php $time="7 hour"?></a></li>
                                                <li><a href="ajax.php?time=8 hour">8 hour <?php $time="8 hour"?></a></li>
                                                    <li><a href="ajax.php?time=9 hour">9 hour <?php $time="9 hour"?></a></li>
                                                    <li><a href="ajax.php?time=10 hour">10 hour <?php $time="10 hour"?></a></li>
                                                    <li><a href="ajax.php?time=11 hour">11 hour <?php $time="11 hour"?></a></li>
                                                    <li><a href="ajax.php?time=12 hour">12 hour <?php $time="12 hour"?></a></li>
                                                    
                                                    
                                                    <li class="divider"></li>
                                                        <li><a href="ajax.php?time=1 day">1 day <?php $time="1 day"?> </a></li>
                                                        <li><a href="ajax.php?time=2 day">2 days <?php $time="2 day"?></a></li>
                                                        <li><a href="ajax.php?time=3 day">3 days <?php $time="3 day"?></a></li>
                                                        <li><a href="ajax.php?time=4 day">4 days <?php $time="4 day"?></a></li>
                                                        <li><a href="ajax.php?time=5 day">5 days <?php $time="5 day"?></a></li>
                                                        <li><a href="ajax.php?time=6 day">6 days <?php $time="6 day"?></a></li>
                                                        <li><a href="ajax.php?time=7 day">7 days <?php $time="7 day"?></a></li>
                                                        <li><a href="ajax.php?time=8 day">8 days <?php $time="8 day"?></a></li>
                                                        <li><a href="ajax.php?time=9 day">9 days <?php $time="9 day"?></a></li>
                                                        <li><a href="ajax.php?time=10 day">10 days <?php $time="10 day"?></a></li>
                                                        <li><a href="ajax.php?time=11 day">11 days <?php $time="11 day"?></a></li>
                                                        <li><a href="ajax.php?time=12 day">12 days <?php $time="12 day"?></a></li>
                                                        <li><a href="ajax.php?time=13 day">13 days <?php $time="13 day"?></a></li>
                                                        <li><a href="ajax.php?time=14 day">14 days <?php $time="14 day"?></a></li>
                                                        <li><a href="ajax.php?time=15 day">15 days <?php $time="15 day"?></a></li>
                                                        <li><a href="ajax.php?time=16 day">16 days <?php $time="16 day"?></a></li>
                                                        <li><a href="ajax.php?time=17 day">17 days<?php $time="17 day"?> </a></li>
                                                        <li><a href="ajax.php?time=18 day">18 days <?php $time="18 day"?></a></li>
                                                        <li><a href="ajax.php?time=19 day">19 days <?php $time="19 day"?></a></li>
                                                        <li><a href="ajax.php?time=20 day">20 days <?php $time="20 day"?></a></li>
                                                        <li><a href="ajax.php?time=21 day">21 days <?php $time="21 day"?></a></li>
                                                        <li><a href="ajax.php?time=22 day">22 days <?php $time="22 day"?></a></li>
                                                        <li><a href="ajax.php?time=23 day">23 days <?php $time="23 day"?></a></li>
                                                        <li><a href="ajax.php?time=24 day">24 days <?php $time="24 day"?></a></li>
                                                        <li><a href="ajax.php?time=25 day">25 days <?php $time="25 day"?></a></li>
                                                        <li><a href="ajax.php?time=26 day">26 days <?php $time="26 day"?> </a></li>
                                                        <li><a href="ajax.php?time=27 day">27 days <?php $time="27 day"?></a></li>
                                                        <li><a href="ajax.php?time=28 day">28 days <?php $time="28 day"?></a></li>
                                                        <li><a href="ajax.php?time=29 day">29 days <?php $time="29 day"?></a></li>
                                                        <li><a href="ajax.php?time=30 day">30 days <?php $time="30 day"?></a></li>
                                                        <li><a href="ajax.php?time=31 day">>31 days <?php $time="31 day"?></a></li>
                                                                
                                                        <li class="divider"></li>
                                                            <li><a href="ajax.php?time=1 year">1 year <?php $time="1 year"?></a></li> 
                                                        
                                    </ul>
                                    </div>
                                    
									</div>
									<div class="card-body">
										<div class="default-tab">
											<nav>
												<div class="nav nav-tabs" id="nav-tab" role="tablist">
													<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-data" role="tab" aria-controls="nav-home"
													 aria-selected="true">DataBases Info</a>
													<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-queries" role="tab" aria-controls="nav-profile"
                                                     aria-selected="false">Queries</a>
												</div>
                                                
											</nav>
											<div class="tab-content pl-3 pt-2" id="nav-tabContent">
												<div class="tab-pane fade show active" id="nav-data" role="tabpanel" aria-labelledby="nav-home-tab">
                                                <div class="col-lg-12 col-sm-12 text-center">
                                                <div id="graph" style="width=400px" ></div>
                                                </div>												
                                            </div>
												<div class="tab-pane fade" id="nav-queries" role="tabpanel" aria-labelledby="nav-profile-tab">
                                                <div class="section__content section__content--p30">
                                                        <div class="container-fluid">
                                                        <div class="row m-t-30">
        
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
		


                          
                                <!-- DATA TABLE-->
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                                <th>Query id</th>
                                                <th>Query</th>
                                                <th>Elapsed Time</th>
                                                <th>Number of Executions</th>
                                                <th>Average Responsive Time(hh:mm:ss)</th>
                                                <th>Weight %</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=1"><?php echo $var[0];?>
                                                </a></td><td><?php echo $var1[0];?></td><td><?php echo $var2[0];?>
                                                    </td>
                                                    <td><?php echo $var3[0];?></td>
                                                <td><?php echo $var4[0];?></td>
                                                <td><?php echo $v[0];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=2"><?php echo $var[1];?></a></td>
                                                <td><?php echo $var1[1];?></td>
                                                <td><?php echo $var2[1];?></td>
                                                <td class="process"><?php echo $var3[1];?></td>
                                                <td><?php echo $var4[1];?></td>
                                                <td><?php echo $v[1];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=3"><?php echo $var[2];?></a></td>
                                                <td><?php echo $var1[2];?></td>
                                                <td><?php echo $var2[2];?></td>
                                                <td class="process"><?php echo $var3[2];?></td>
                                                <td><?php echo $var4[2];?></td>
                                                <td><?php echo $v[2];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=4"><?php echo $var[3];?></a></td>
                                                <td><?php echo $var1[3];?></td>
                                                <td><?php echo $var2[3];?></td>
                                                <td class="process"><?php echo $var3[3];?></td>
                                                <td><?php echo $var4[3];?></td>
                                                <td><?php echo $v[3];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=5"><?php echo $var[4];?></a></td>
                                                <td><?php echo $var1[4];?></td>
                                                <td><?php echo $var2[4];?></td>
                                                <td class="process"><?php echo $var3[4];?></td>
                                                <td><?php echo $var4[4];?></td>
                                                <td><?php echo $v[4];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=6"><?php echo $var[5];?></a></td>
                                                <td><?php echo $var1[5];?></td>
                                                <td><?php echo $var2[5];?></td>
                                                <td class="process"><?php echo $var3[5];?></td>
                                                <td><?php echo $var4[5];?></td>
                                                <td><?php echo $v[5];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=7"><?php echo $var[6];?></a></td>
                                                <td><?php echo $var1[6];?></td>
                                                <td><?php echo $var2[6];?></td>
                                                <td class="process"><?php echo $var3[5];?></td>
                                                <td><?php echo $var4[6];?></td>
                                                <td><?php echo $v[6];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=8"><?php echo $var[7];?></a></td>
                                                <td><?php echo $var1[7];?></td>
                                                <td><?php echo $var2[7];?></td>
                                                <td class="process"><?php echo $var3[7];?></td>
                                                <td><?php echo $var4[7];?></td>
                                                <td><?php echo $v[7];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=9"><?php echo $var[8];?></a></td>
                                                <td><?php echo $var1[8];?></td>
                                                <td><?php echo $var2[8];?></td>
                                                <td class="process"><?php echo $var3[8];?></td>
                                                <td><?php echo $var4[8];?></td>
                                                <td><?php echo $v[8];?></td>
                                            </tr>
                                            <tr>
                                                <td><a href="queries_details_oracle.php?courbe=10"><?php echo $var[9];?></a></td>
                                                <td><?php echo $var1[9];?></td>
                                                <td><?php echo $var2[9];?></td>
                                                <td class="process"><?php echo $var3[9];?></td>
                                                <td><?php echo $var4[9];?></td>
                                                <td><?php echo $v[9];?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE-->
                            </div>
                        </div>
                                                    </div>
                                                </div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTAINER-->

		</div>

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
		<script src="vendor/select2/select2.min.js">
		</script>

		<!-- Main JS-->
		<script src="js/main.js"></script>
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
