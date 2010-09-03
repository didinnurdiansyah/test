<?
	include "MySQLController.php";
	include "MySQLConverter.php";
	//session_start();
	
	class AdminIndoTube
	{
		var $cont;
		var $conv;
		var $debug;
		function AdminIndoTube()
		{
			$this->debug=false;
			$this->cont=new MySQLController("localhost","root","","kereta");
			$this->conv=new MySQLConverter();
		}
		
		function genXML($s,$f,$w)
		{
			$sql="select ".$s." from ".$f." where ".$w;
			$res=$this->cont->query($sql);
			if(!$res) echo "Error!";
			else $this->conv->ubah($res,"custom",$sql);
		}
		
		function get_list_jurusan()
		{
			$sql = "select * from jurusan";
			if($this->debug) echo $sql;
			$res=$this->cont->query($sql);
			if(!$res) echo "Error!";
			else $this->conv->ubah($res,"custom",$sql);
		}
		
		function cari_jurusan($asal, $tujuan)
		{
			$sql = "select * from jurusan where Asal like '".$asal."' and Tujuan like '".$tujuan."' or Asal like '".$tujuan."' and Tujuan like '".$asal."'";
			if($this->debug) echo $sql;
			$res=$this->cont->query($sql);
			if(!$res) echo "Error!";
			else $this->conv->ubah($res,"custom",$sql);
		}
		
		function get_list_kereta($idjur)
		{
			$sql = "select * from Kereta where ID_Jurusan = '".$idjur."'";
			if($this->debug) echo $sql;
			$res=$this->cont->query($sql);
			if(!$res) echo "Error!";
			else $this->conv->ubah($res,"custom",$sql);
		}
		
		function get_list_detail_kereta($idker)
		{
			$sql = "select * from Detail_Kereta where ID_Kereta = '".$idker."'";
			if($this->debug) echo $sql;
			$res=$this->cont->query($sql);
			if(!$res) echo "Error!";
			else $this->conv->ubah($res,"custom",$sql);
		}
		
		function get_list_jadwal($idker2)
		{
			$sql = "select * from Jadwal where ID_Kereta = '".$idker2."'";
			if($this->debug) echo $sql;
			$res=$this->cont->query($sql);
			if(!$res) echo "Error!";
			else $this->conv->ubah($res,"custom",$sql);
		}
		
		function get_list_news()
		{
			$sql = "select * from news order by Tanggal DESC";
			if($this->debug) echo $sql;
			$res=$this->cont->query($sql);
			if(!$res) echo "Error!";
			else $this->conv->ubah($res,"custom",$sql);
		}
		
		function insert($tabel,$data)
		{
			$sql="insert into ".$tabel."(";
			$names=array_keys($data);
			$values=array_values($data);
			for($i=0;$i<sizeof($names);$i++)
			{
				if($i>0) $sql.=",";
				$sql.=$names[$i];
			}
			$sql.=") values(";
			for($i=0;$i<sizeof($values);$i++)
			{
				if($i>0) $sql.=",";
				if($names[$i]=="password")
				{
					$nilai = md5($values[$i]);
				}
				else
				{
					$nilai = $values[$i];
				}
				$sql.="'".$nilai."'";
			}
			$sql.=")";
			if($this->debug) echo $sql;
			$res=$this->cont->query($sql);
		}
		
		function redirect($addr)
		{
			echo '<meta http-equiv="refresh" content="0;URL='.$addr.'">';
		}
	}
?>