<?php
session_start(); 
?>
<?php 
        $diff = $_GET['courbe'];
        //An example JSON string.
        $json_source = file_get_contents('http://localhost/dbbrain1/json/queries_sqlserver.json');

        //Decode the JSON and convert it into an associative array.
        $json_data = json_decode($json_source,true);

        $json_source2 = file_get_contents('http://localhost/dbbrain1/json/Who.json');
        $json_data2 = json_decode($json_source2,true);

        $i = 0;
        $var = array();
        $var1 = array();

        foreach($json_data as $v){
            
        $var[$i] = $v['Query_hash'];
        $var1[$i] = $v['SQL_statement'];
        $var2[$i] = $v['Max_elapsed_time'];
        $var3[$i] = $v['Execution_count'];
        $var4[$i] = $v['Date'];

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

        
        $i = 0;
        $var5 = array();
        $var6 = array();
        foreach($json_data2 as $va){
            $var5[$i] = $va['HostName'];
            $var6[$i] = $va['Login'];
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
    <title>Dashboard & Rapport</title>

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
    $('#graph').load('localsqlserver.php?courbe=<?php echo $diff; ?>').fadeIn("slow");
    $('#graph1').load('callsqlserver.php?courbe=<?php echo $diff; ?>').fadeIn("slow");
    }, 5000);
 
    </script>

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
                                                                <div class="col-md-12">
                                                                    <div class="overview-wrap">
                                                                        <h2 class="title-1">Queries Details</h2>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row m-t-25">
                                                                <div class="col-lg-6">
                                                                    <div class="au-card m-b-30">
                                                                        <div class="au-card-inner">
                                                                        <div id="graph"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="au-card m-b-30">
                                                                        <div class="au-card-inner">
                                                                        <div id="graph1"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                    
                                                             <!-- DATA TABLE-->
                                                             <div class="table-responsive m-b-40">
                                                                <table class="table table-borderless table-data3">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>#</th>
                                                                            <th>Clients</th>
                                                                            <th>Weighted %</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>1</td>
                                                                            <td><?php 
                                                                            echo $var5[0];
                                                                            /*foreach ($json_data2 as $id=>$reference) {
                                                                            if ($id=='HostName'){
                                                                            echo $reference; }}*/
                                                                            /*
                                                                            if($diff==1){
                                                                                echo $var5[0];
                                                                            }elseif($diff==2){
                                                                                echo $var5[1];
                                                                            }elseif($diff==3){
                                                                               echo $var5[2];
                                                                           }elseif($diff==4){
                                                                               echo $var5[3];
                                                                           }elseif($diff==5){
                                                                            echo $var5[4];
                                                                        }*/
                                                                            ?>
                                                                            </td>
                                                                            <td>100%</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>2</td>
                                                                            <td>x</td>
                                                                            <td>x</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3</td>
                                                                            <td>x</td>
                                                                            <td>x</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>4</td>
                                                                            <td>x</td>
                                                                            <td>x</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>5</td>
                                                                            <td>x</td>
                                                                            <td>x</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <!-- END DATA TABLE-->
                                    
                                                            <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="card">
                                                                    <div class="card-header">Query active in schema</div>
                                                                    <div class="card-body card-block">
                                                                        <form action="" method="post" class="">
                                                                            <div class="row">
                                                                                    <!--<div class="col-6">
                                                                                            <div class="form-group">
                                                                                                <label for="cc-exp" class="control-label mb-1">Name</label>
                                                                                                <input id="cc-exp" name="cc-exp" type="tel" class="form-control cc-exp" value="" data-val="true" data-val-required="Please enter the card expiration"
                                                                                                    data-val-cc-exp="Please enter a valid month and year" placeholder="x"
                                                                                                    autocomplete="cc-exp">
                                                                                                <span class="help-block" data-valmsg-for="cc-exp" data-valmsg-replace="true"></span>
                                                                                            </div>
                                                                                        </div>-->
                                                                                        <div class="col-6">
                                                                                            <label for="x_card_code" class="control-label mb-1">Weight %</label>
                                                                                            <div class="input-group">
                                                                                                <!--<input id="x_card_code" name="x_card_code" type="tel" class="form-control cc-cvc" value="" placeholder="x" data-val="true" data-val-required="Please enter the security code"
                                                                                                    data-val-cc-cvc="Please enter a valid security code" autocomplete="off">-->
                                                                                                    <label type="text" id="weigth" name="weigth" class="form-control">
                                                                                    <?php 
                                                                                    if($diff==1){
                                                                                        echo $v[0];
                                                                                    }elseif($diff==2){
                                                                                        echo $v[1];
                                                                                    }elseif($diff==3){
                                                                                        echo $v[2];
                                                                                   }elseif($diff==4){
                                                                                        echo $v[3];
                                                                                   }elseif($diff==5){
                                                                                    echo $v[4];
                                                                                    }elseif($diff==6){
                                                                                        echo $v[5];
                                                                                    }elseif($diff==7){
                                                                                        echo $v[6];
                                                                                    }elseif($diff==8){
                                                                                        echo $v[7];
                                                                                    }elseif($diff==9){
                                                                                        echo $v[8];
                                                                                    }elseif($diff==10){
                                                                                        echo $v[9];
                                                                                    }
                                                                                ?>
                                                                                    </label>
                                                
                                                                                            </div>
                                                                                        </div>
                                                                            </div>                                     
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                    
                                                            <div class="col-lg-6">
                                                                <div class="card">
                                                                    <div class="card-header">Query ID</div>
                                                                    <div class="card-body card-block">
                                                                        <form action="" method="post" class="">
                                                                            <div class="form-group">
                                                                                    <label for="cc-exp" class="control-label mb-1"></label>
                                                                                <div class="input-group">
                                                                                    <label type="text" id="username" name="username" class="form-control">
                                                                                    <?php 
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
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                    <div class="card">
                                                                        <div class="card-header">
                                                                            <h4>Query</h4>
                                                                        </div>
                                                                        <div class="card-body">
                                                                            <p class="text-muted m-b-15">
                                                                            <?php
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
                                                                                }?>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                            </div>
                                                            <!--
                                                            <div class="col-lg-12">
                                                                    <div class="card">
                                                                        <div class="card-header">
                                                                            <h4>Query Name</h4>
                                                                        </div>
                                                                        <div class="card-body">
                                                                            <p class="text-muted m-b-15">
                                                                            <?php
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
                                                                                }?>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                            </div>-->
                                                            <div class="col-lg-12">
                                                                    <div class="card">
                                                                        <div class="card-header">
                                                                            <h4>Users</h4>
                                                                        </div>
                                                                        <div class="card-body">
                                                                            <p class="text-muted m-b-15"><?php echo $var6[0];?></p>
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
        </div>

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
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
