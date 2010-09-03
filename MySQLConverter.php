<?
	class MySQLConverter
	{
		#--> Fungsi2 xml
		function headerXML()
		{
			header("Content-type: text/xml");
			echo '<?xml version="1.0" encoding="UTF-8"?>'."\n";
		}
		function tagAwal($elemen,$atribut=false,$kosong=false)
		{
			echo "<".$elemen;
			if($atribut)
			{
				$names=array_keys($atribut);
				$values=array_values($atribut);				
				for($i=0;$i<sizeof($atribut);$i++)
				{
					echo ' '.$names[$i].'="'.$values[$i].'"';
				}
			}
			if($kosong) echo " />";
			else 		echo ">";
		}
		function tagAkhir($elemen)
		{
			echo "</".$elemen.">";
		}
		function komentar($isi)
		{
			echo "<!-- ".$isi." -->\n";
		}
		function data($isi)
		{
			echo "<![CDATA[\n".$isi."\n]]>";			
		}
		function enter($n=1)
		{
			for($i=0;$i<$n;$i++)
				echo "\n";
		}
		function tab($n=1)
		{
			for($i=0;$i<$n;$i++)
				echo "\t";
		}		
		function ubah($res,$nmtabel,$sql="")
		{
			$this->headerXML();
			if($sql=="")			
				$this->komentar("Isi data ".$nmtabel);
			else
				$this->komentar("Hasil query : ".$sql);
			$this->tagAwal($nmtabel);
			$this->enter();

			while($row=mysql_fetch_array($res,MYSQL_BOTH))
			{
				$this->tab(1);
				$this->tagAwal("record");
				$this->enter();
				for($i=0;$i<mysql_num_fields($res);$i++) 
				{			
					$meta = mysql_fetch_field($res,$i);
					$this->tab(2);
					$this->tagAwal($meta->name);
					echo $row[$i];
					$this->tagAkhir($meta->name);
					$this->enter();
				}
				$this->tab(1);
				$this->tagAkhir("record");
				$this->enter();
			}
			$this->tagAkhir($nmtabel);
			$this->enter();
		}		
	}
?>