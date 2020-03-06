<?php
	try{
		$koneksi=new PDO('mysql:host=localhost;dbname=livechat','root','');	
	}catch(PDOException $e){
		echo "Koneksi Database gagal ".$e->getMessage();
	exit;
	}
?>