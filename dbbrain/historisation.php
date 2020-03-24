<html>
<body>
<h1> Catalogue produit</h1>
<?
mysql_connect("localhost","root","");

$result = mysql_query("SELECT * FROM historical_data");
$nblignes = mysql_numrows($result);
    
echo "<table><tr><td>Désignation</td><td>Prix</td></tr>\n";
for ($i=0;$i<$nblignes;$i=$i+1) {
	 $prod_nom =  mysql_result($result,$i,"nom");
	 $prod_prix = mysql_result($result,$i,"prix");
	 echo "<tr><td>$prod_nom</td><td>$prod_prix</td></tr>";
}
echo "</table>";
mysql_close();
?>
</body>
</html>