<html>
	<head>
		<title>Validacija obrazca</title>
  		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="../CSS/Oblika.css"/>

	</head>
	<body>
		<table>
			<tr>
				<td class="stran" valign="top">
					<a class="hip" href="../index.html"><img src="../Slike/swimming.jpg" class="Logo"></a>
					<blockquote>
							<ul id="menu">
								<li><a href="../index.html">Domov</a></li>
								<li><a href="../podstrani/Galerija.html">Galerija slik</a></li>
								<li><a href="../podstrani/Kontakti.html">Kontakti</a></li>
								<li><a href="../podstrani/Obrazec za prijavo.html">Obrazec za prijavo</a></li>
								<li><a href="../podstrani/Koristne povezave.html">Koristne povezave</a></li>
								<li><a href="../PHP/Rekordi.php">Rekordi</a></li>	
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
				</td >
				<td valign="top">
				<?php
					$ime=$_POST["ime"];
					$priimek=$_POST["priimek"];
					$spol=$_POST["spol"];
					$datum=$_POST["datum"];
					$telefon=$_POST["telefon"];
					$naslov=$_POST["naslov"];
					$email=$_POST["email"];
					$treningi=$_POST["treningi"];

					if($ime != "" && $priimek != "" && $naslov != "" && $spol != "" && $telefon != "" && $email != "" && $treningi != "" && $datum != "" )
					{
						echo "<h2>Pozdravljen"; if($spol=="Z"){echo "a";} echo" $ime  $priimek!</h2></br>
					
						Uspešno ste se prijavili na treninge za  $treningi.";
					}
				?>
				</td>
			</tr>
		</table>
	</body>
</html>

