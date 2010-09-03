<?
	class MySQLController
	{
		var $host;
		var $user;
		var $pass;
		var $dbname;
		var $linkid;
		#--> Fungsi2 database
		function MySQLController($host,$user,$pass,$dbname)
		{
			$this->host=$host;
			$this->user=$user;
			$this->pass=$pass;
			$this->dbname=$dbname;
			$this->buka();

		}		
		function buka()
		{
			$this->linkid=mysql_connect($this->host,$this->user,$this->pass);
			if(!$this->linkid) 
			{
				echo "Gagal mengkoneksi MySQL : ".mysql_error();
				return;
			}
			if(!mysql_select_db($this->dbname,$this->linkid))
			{
				echo "Gagal mengkoneksi MySQL : ".mysql_error();
				return;
			}
		}
		function tutup()
		{
			mysql_close($this->linkid);
		}		
		function query($sql)
		{
			$res=mysql_query($sql);
			return $res;		
		}		
	}
?>