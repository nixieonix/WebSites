<html>
	<head>
		<title>Rekordi</title>
  		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="../CSS/Oblika.css"/>
	</head>
	<body>
		
			<table>
			<tr>
				<td  valign="top">
					<a class="hip" href="../index.html"><img src="../Slike/swimming.jpg" class="Logo"></a>
					<blockquote>
							<ul id="menu">
								<li><a href="../index.html">Domov</a></li>
								<li><a href="../Podstrani/Galerija.html">Galerija slik</a></li>
								<li><a href="../Podstrani/Kontakti.html">Kontakti</a></li>
								<li><a href="../Podstrani/Obrazec za prijavo.html">Obrazec za prijavo</a></li>
								<li><a href="../Podstrani/Koristne povezave.html">Koristne povezave</a></li>
								<li><a href="Rekordi.php">Rekordi</a></li>	
							</ul>
						
						<form method=GET action="http://www.google.com/search">
							<table>
								<tr>
									<td>
										<a class="hip" href="http://www.google.com/"><img src="http://www.google.com/logos/Logo_40wht.gif"></a><br/>
										<input type=text name=vnos size=31 value="Išči...">
										<input type=submit name=pošlji value="Išči">
									</td>
								</tr>
							</table>
						</form><br/>
					</blockquote> 
				</td>
				<td>
					<h1>Slovenski plavalni dosežki</h1><br/>
					<h2>Moški:</h2>
					<?php

						$con = mysql_connect('localhost','root','');
						if (!$con)
						  {
							die('Could not connect: ' . mysql_error());
						  }

						mysql_select_db("rekordi", $con);
						echo "<table>";
						echo "<tr>";
						
							$result = mysql_query("SELECT * FROM slovenski_rekordi_moski");

							echo "<th>Disciplina</th>";
							echo "<td>";

							while($row = mysql_fetch_array($result))
							{		

								echo "<table>";
								echo "<tr>";
								echo $row['Disciplina'];
								echo "</tr>";
								echo "</table>";
						
							}
							
							echo "</td>";
							
							$result = mysql_query("SELECT * FROM slovenski_rekordi_moski");

							echo "<th>Plavalec</th>";
							echo "<td>";

							while($row = mysql_fetch_array($result))
							{		
						
								echo "<table>";
								echo "<tr>";
								echo $row['Plavalec'];
								echo "</tr>";
								echo "</table>";
		
							}
						
						echo "</td>";
						
							$result = mysql_query("SELECT * FROM slovenski_rekordi_moski");
						
							echo "<th>Čas</th>";
							
							
							echo "<td>";

							while($row = mysql_fetch_array($result))
							{		
						
								echo "<table>";
								echo "<tr>";
								echo $row['Cas'];
								echo "</tr>";
								echo "</table>";
		
							}
						
						echo "</td>";
						
							$result = mysql_query("SELECT * FROM slovenski_rekordi_moski");

							echo "<th>Klub</th>";
							echo "<td>";

							while($row = mysql_fetch_array($result))
							{		
						
								echo "<table>";
								echo "<tr>";
								echo $row['Klub'];
								echo "</tr>";
								echo "</table>";
		
							}
							echo "</td>";
						
						echo "</tr>";
						echo "</table>";
					?>	
					
					
					<h2>Ženske:</h2>
					<?php

						$con = mysql_connect('localhost','root','');
						if (!$con)
						  {
							die('Could not connect: ' . mysql_error());
						  }
		  

						mysql_select_db("rekordi", $con);
						echo "<table>";
						echo "<tr>";
						
							$result = mysql_query("SELECT * FROM slovenski_rekordi_zenske");


							echo "<th>Disciplina</th>";

							echo "<td>";

							while($row = mysql_fetch_array($result))
							{		

								echo "<table>";
								echo "<tr>";
								echo $row['Disciplina'];
								echo "</tr>";
								echo "</table>";
							}
	
							echo "</td>";


						
							$result = mysql_query("SELECT * FROM slovenski_rekordi_zenske");

							echo "<th>Plavalec</th>";
							echo "<td>";

							while($row = mysql_fetch_array($result))
							{		
						
								echo "<table>";
								echo "<tr>";
								echo $row['Plavalec'];
								echo "</tr>";
								echo "</table>";
		
							}
						
						echo "</td>";
						
							$result = mysql_query("SELECT * FROM slovenski_rekordi_zenske");

							echo "<th>Čas</th>";
							echo "<td>";
	
							while($row = mysql_fetch_array($result))
							{		

								echo "<table>";
								echo "<tr>";
								echo $row['Cas'];
								echo "</tr>";
								echo "</table>";
		
							}
						
						echo "</td>";
						
							$result = mysql_query("SELECT * FROM slovenski_rekordi_zenske");

							echo "<td>";
							echo "<th>Klub</th>";
							echo "</td>";
							echo "<td>";

							while($row = mysql_fetch_array($result))
							{		
						
								echo "<table>";
								echo "<tr>";
								echo $row['Klub'];
								echo "</tr>";
								echo "</table>";
		
							}
						
						echo "</td>";
						
						echo "</tr>";
						echo "</table>";
					?>	
				</td>
			</tr>
		</table>

	</body>
</html>