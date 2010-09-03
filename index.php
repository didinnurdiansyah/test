<html>
	<body>
		<?
			$idker = $_REQUEST['idker'];
			$link = mysql_connect("localhost","root","");
			mysql_select_db("kereta",$link);
			if (!$link)
 			 {
  				die('Could not connect: ' . mysql_error());
  			}
			$res = mysql_query("select * from Jadwal where ID_Kereta = ".$idker."");
			
			echo "<table border=1 align=center><tr><td><B>Nama Stasiun</B></td><td><B>Da</B></td><td><B>Br</B></td></tr>";
			while($row = mysql_fetch_array($res))
			{
				echo "<tr>";
				echo "<td>".$row['Nama_Stasiun']."</td><td>".$row['Da']."</td><td>".$row['Br']."</td>";
				echo "</tr>";
			}
			echo "</table>";
			mysql_close($link);       
            mysql
		   	
		?>
	</body>
</html>