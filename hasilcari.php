<html>
	<body>
		<?
			$id1 = $_REQUEST['id1'];
			$id2 = $_REQUEST['id2'];
			$url="http://infoka.soluzen.com/cari/?id_station1=".$id1."&id_station2=".$id2."";
			$content = join('', file($url));
			
			$tanda1 = "<table width=95% align=center>";
			$tanda2 = "<p><ul>Catatan: Tarif dapat berubah sewaktu-waktu tanpa pemberitahuan</ul></p>";
			$tampil = substr($content,strpos($content,$tanda1),(strpos($content,$tanda2) - strpos($content,$tanda1)));
			$flag = (strpos($content,$tanda2) - strpos($content,$tanda1));
			if($flag == 0)
			{
				echo "Data yang Anda cari tidak ditemukan.<br>
Untuk keterangan lebih lanjut silahkan hubungi pusat informasi KA terdekat.";
			}
			else
			{
				echo $tampil;
			}
		?>
	</body>
</html>