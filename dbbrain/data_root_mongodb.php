<?php
session_start(); 
?>
<?php 
require 'vendor/autoload.php';
	 
$mongo = new \MongoDB\Driver\Manager('mongodb://localhost:27017');
$cmdstats = new \MongoDB\Driver\Command(['dbStats' => 1]);
$dbstats = $mongo->executeCommand('registration', $cmdstats);
$dbstats->setTypeMap(array(
	'array' => 'array',
	'document' => 'array',
	'root' => 'array'
));

// There must be only one item in $dbstats

foreach ($dbstats as $dbs)
{
	//echo($dbs['fsUsedSize']);
	//echo($dbs['fsTotalSize']);

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
    $('#graph').load('databasesInfoGraphesmongo.php ').fadeIn("slow");
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
                                <i class="fas fa-desktop"></i>Objet Brower</a>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Custom<span class="caret"></span></a>
                        <a href="#">
                        <ul class="dropdown-menu" role="menu">
                <li><a href="#">Standard</a></li>
                <li><a href="#">5 min</a></li>
                <li><a href="#">15 min</a></li>
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
										<h4>Database View Mongobd</h4>
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
                                                <div id="graph"></div>
                                                </div>												
                                            </div>
												<div class="tab-pane fade" id="nav-queries" role="tabpanel" aria-labelledby="nav-profile-tab">
                                                <div class="section__content section__content--p30">
                                                        <div class="container-fluid">
                                                        <div class="row m-t-30">
                            <div class="col-md-12">
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
                                                <td><a href="queries_details_mongodb.php"><?php echo "9be92410-39aa-4467-8d28-4fcb7356903f";?>
                                                </a></td><td><?php
                                                    echo "query";?></td><td>0
                                                    </td>
                                                    <td><?php ?></td>
                                                <td>x</td>
                                                <td>x</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">Name</a></td>
                                                <td>x</td>
                                                <td>x</td>
                                                <td class="process">x</td>
                                                <td>x</td>
                                                <td>x</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">Name</a></td>
                                                <td>x</td>
                                                <td>x</td>
                                                <td class="process">x</td>
                                                <td>x</td>
                                                <td>x</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">Name</a></td>
                                                <td>x</td>
                                                <td>x</td>
                                                <td class="process">x</td>
                                                <td>x</td>
                                                <td>x</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">Name</a></td>
                                                <td>x</td>
                                                <td>x</td>
                                                <td class="process">x</td>
                                                <td>x</td>
                                                <td>x</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">Name</a></td>
                                                <td>x</td>
                                                <td>x</td>
                                                <td class="process">x</td>
                                                <td>x</td>
                                                <td>x</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">Name</a></td>
                                                <td>x</td>
                                                <td>x</td>
                                                <td class="process">x</td>
                                                <td>x</td>
                                                <td>x</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">Name</a></td>
                                                <td>x</td>
                                                <td>x</td>
                                                <td class="process">x</td>
                                                <td>x</td>
                                                <td>x</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">Name</a></td>
                                                <td>x</td>
                                                <td>x</td>
                                                <td class="process">x</td>
                                                <td>x</td>
                                                <td>x</td>
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
