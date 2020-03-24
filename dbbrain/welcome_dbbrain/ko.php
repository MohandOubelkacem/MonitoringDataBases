<?php


    $dbhost=$_POST["dbhost"];
    $dbuser=$_POST["dbuser"];
    $dbpass=$_POST["dbpass"];
  
  
    DEFINE('DB_USERNAME', "$dbuser");
    DEFINE('DB_PASSWORD', "$dbpass");
    DEFINE('DB_HOST', "$dbhost");
    DEFINE('DB_DATABASE', 'performance_schema');
  
    $mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
  
    if (mysqli_connect_error()) {
      die('Connect Error ('.mysqli_connect_errno().') '.mysqli_connect_error());
    }
  
    echo 'Connected successfully.';
  
    $disk = "SELECT table_schema \"Data Base Name\", 
    sum( data_length + index_length ) / 1024 / 1024 \"Data Base Size in MB\", 
    sum( data_free )/ 1024 / 1024 \"Free Space in MB\" 
    FROM information_schema.TABLES 
    where table_schema = \"mysql\"";

    $indicateur = 'SELECT DIGEST, DIGEST_TEXT,COUNT_STAR,SUM_TIMER_WAIT,SUM_LOCK_TIME , SUM_ROWS_SENT FROM performance_schema.events_statements_summary_by_digest';
        $resultat = $mysqli->query($indicateur);
        $resultat1 = $mysqli->query($disk);

        $mysqli->set_charset("utf8");
        while ($donn = $resultat->fetch_assoc()) 
        {
            
            $tableau_pour_json = ['DIGEST'=> $donn['DIGEST'], 
                                  'DIGEST_TEXT'=> $donn['DIGEST_TEXT'], 
                                  'COUNT_STAR'=> $donn['COUNT_STAR'], 
                                  'SUM_TIMER_WAIT'=> $donn['SUM_TIMER_WAIT'], 
                                  'SUM_LOCK_TIME'=> $donn['SUM_LOCK_TIME'], 
                                  'SUM_ROWS_SENT'=> $donn['SUM_ROWS_SENT']];

            $contenu_json =json_encode($tableau_pour_json);

            // Nom du fichier à créer
            $nom_du_fichier = 'fichierMysql.json';

            // Ouverture du fichier
            $fichier = fopen($nom_du_fichier, 'w+');

            // Ecriture dans le fichier
            fwrite($fichier, $contenu_json);

            // Fermeture du fichier
            fclose($fichier);
        }

        while ($donn1 = $resultat1->fetch_assoc()) 
        {
            
            $tableau_pour_json = ['Data Base Size in MB'=> $donn1['Data Base Size in MB'], 
                                  'Free Space in MB'=> $donn1['Free Space in MB']];

            $contenu_json =json_encode($tableau_pour_json);

            // Nom du fichier à créer
            $nom_du_fichier = 'fichierMysql1.json';

            // Ouverture du fichier
            $fichier = fopen($nom_du_fichier, 'w+');

            // Ecriture dans le fichier
            fwrite($fichier, $contenu_json);

            // Fermeture du fichier
            fclose($fichier);
        }

        
        
        $mysqli->close();

        echo "<script type='text/javascript'>alert('Successfully!')</script>";

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
	<title>Modal</title>

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

</head>

<body class="animsition">
	<div class="page-wrapper">


		
		<!-- PAGE CONTAINER-->
		<div class="page-container">

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div>
								<div class="card">
									<div class="card-body">

										<!-- Button trigger modal -->
										<button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#smallmodal">
											successfully
										</button>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- modal small -->
			<div class="modal fade" id="smallmodal" tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
				<div class="modal-dialog modal-sm" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="smallmodalLabel">Modal successfully</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>
								OK.
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-primary">Confirm</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end modal small -->
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
	<script src="vendor/chartjs/Chart.bundle.min.js"></script>
	<script src="vendor/select2/select2.min.js">
	</script>

	<!-- Main JS-->
	<script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
