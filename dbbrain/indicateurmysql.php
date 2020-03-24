<?php 
	// connect to database
    $db = mysqli_connect('localhost', 'root', '', 'registration');
    
    $db->set_charset("utf8");
		$requete = 'SELECT DIGEST, DIGEST_TEXT,COUNT_STAR,SUM_TIMER_WAIT,SUM_LOCK_TIME , SUM_ROWS_SENT FROM performance_schema.events_statements_summary_by_digest';
		$resultat = $db->query($requete);
		while ($donn = $resultat->fetch_assoc()) {
            
            $tableau_pour_json = ['DIGEST'=> $donn['DIGEST'], 'DIGEST_TEXT'=> $donn['DIGEST_TEXT'], 'COUNT_STAR'=> $donn['COUNT_STAR'], 'SUM_TIMER_WAIT'=> $donn['SUM_TIMER_WAIT'], 'SUM_LOCK_TIME'=> $donn['SUM_LOCK_TIME'], 'SUM_ROWS_SENT'=> $donn['SUM_ROWS_SENT']];

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
	$db->close();

?>