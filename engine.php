<?
	include "AdminIndoTube.php";
	$core=new AdminIndoTube();
	
	if(isset($_GET['act']))
		$act=$_GET['act'];
		
	if(isset($_REQUEST['select']))
	{
		$select=$_REQUEST['select'];
		$from=$_REQUEST['from'];
		if(isset($_REQUEST['where']))
			$where=str_replace("-","=",$_REQUEST['where']);
		else
			$where="true";
		$core->genXML($select,$from,$where);
	}	
	switch($act)
	{
		case "get_list_jurusan":
			$core->get_list_jurusan();
		break;
		
		case "cari_jurusan":
			$core->cari_jurusan($_REQUEST['asal'], $_REQUEST['tujuan']);
		break;
		
		case "get_list_kereta":
			$core->get_list_kereta($_REQUEST['idjur']);
		break;
		
		case "get_list_detail_kereta":
			$core->get_list_detail_kereta($_REQUEST['idker']);
		break;
		
		case "get_list_jadwal":
			$core->get_list_jadwal($_REQUEST['idkereta']);
		break;
		
		case "get_list_news":
			$core->get_list_news();
		break;
		
		case "add_book":
			$data=array
			(
				"IDPesan" => $_REQUEST['idpesan'],
				"Nama" => $_REQUEST['nama'],			
				"Asal" => $_REQUEST['asal'],
				"Tujuan" => $_REQUEST['tujuan'],
				"JumlahTiket" => $_REQUEST['jumtik'],
				"Kelas" => $_REQUEST['kelas'],
				"Harga" => $_REQUEST['harga'],
				"Total" => $_REQUEST['total'],
			);
			$core->insert("Booking",$data);
		break;
	}
?>