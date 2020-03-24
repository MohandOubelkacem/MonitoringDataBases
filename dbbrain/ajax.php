
<?php
session_start(); 
?>
<?php 
        

        //$json = '{"expires_in":5180976,"access_token":"AQXzQgKTpTSjs-qiBh30aMgm3_Kb53oIf-VA733BpAogVE5jpz3jujU65WJ1XXSvVm1xr2LslGLLCWTNV5Kd_8J1YUx26axkt1E-vsOdvUAgMFH1VJwtclAXdaxRxk5UtmCWeISB6rx6NtvDt7yohnaarpBJjHWMsWYtpNn6nD87n0syud0"}';
        $json1 = file_get_contents('http://localhost/Projet_20//dbbrain1-20200128T015951Z-001/dbbrain1/json/oracleDB_all_queries.json');


        //$arr = json_decode($json, true);
        //var_dump($arr['Total physical memory: ']);

        //$var= $arr['Total physical memory: '];

       // echo $var;

        //$var1= 2;

$conn = mysqli_connect("localhost", "root", "", "registration") or die("Connection Error: " . mysqli_error($conn));


$time= $_GET['time']; 
$query = ("SELECT * FROM historical_data WHERE register_data >= now() - interval $time"); 
$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

    $var = array();
    $var1 = array();
    $var2 = array();        
    $v = array ();
    $i=0;
    $row = mysqli_fetch_row($result);
    $num    =    mysqli_num_rows($result);
        
        for ($i=0; $i<=$num;$i++) {
            
            $pointeur = mysqli_data_seek($result,$i); 
            $var[$i] = $row [0];   
            $var1[$i] = $row [1];
            $var2[$i]= $row [2];
            $var3[$i]= $row [3];
            $var4[$i]= $row [4];
            $var5[$i]= $row [5];
            $var6[$i]= $row [6];
            
        }

        
        $varweight = $var2;
        $i=0;
        $v=array();
        $somme = array_sum ( $varweight ) ;
        
        if( $somme != 0) {foreach ($varweight as $value) {
            $v[$i] = ($value * 100)/$somme;
            $i++;
            } } 

        else { $some = 1; }




        for ($i=$num++; $i<=10; $i++) {
            $var[$i] = null;    
            $var1[$i] = null; 
            $var2[$i]= null;
            $var3[$i]= null;
            $var4[$i]= null;
            $var5[$i]= null;
            $var6[$i]= null;
            $v[$i] = null; 
            
        }
     
       
    




        //$var[$i] = $data['sql id']();

        //$var1[$i] = $data['sql text'];
        //$var2[$i] = $data['Elapsed time'];
        //$var3[$i] = $data['Execution time'];
        //$var4[$i] = $v[''];
        //$var5[$i] = $data['parsing_schema_id'];
        //$var6[$i] = $data['Module'];

        //$i++;
        

      
        
    
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
    $('#graph').load('databasesinfographesoracle.php').fadeIn("slow");
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

			
                          
                                <!-- DATA TABLE-->
                                 <div class="table-responsive m-b-60">
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
                                            <td><a href="queries_details_oracle.php?courbe=1"><?php echo $var[0];?></a></td>
                                                <td><?php echo $var1[0];?></td>
                                                <td><?php echo $var2[0];?></td>
                                                <td class="process"><?php echo $var3[0];?></td>
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
                                            <td><a href="queries_details_oracle.php?courbe=6"><?php echo $var[6];?></a></td>
                                                <td><?php echo $var1[6];?></td>
                                                <td><?php echo $var2[6];?></td>
                                                <td class="process"><?php echo $var3[6];?></td>
                                                <td><?php echo $var4[6];?></td>
                                                <td><?php echo $v[6];?></td>
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