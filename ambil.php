<?php
	include "koneksi.php";
	$ambil=$koneksi->prepare("select * from pesan order by id");
	$ambil->execute();
	while($ulangi=$ambil->fetch())
	{
		// Ini Tempat Emoticon 
		$text_awal=$ulangi['pesan'];
		$symbol=array("[kasmaran]","[kedip]","[ketawa]","[marah]","[melet]","[nangis]",
					"[sakit]","[bye]","[maki-maki]","[cmarah]","[cmurung]","[cnangis]",
					"[csedih]","[csenyum]","[bonus]");
				
		$icon=array("<img src='../livechat/emot/akasmaran.gif' title='handup'>",
					"<img src='../livechat/emot/akedip.gif' title='bingung'>",
					"<img src='../livechat/emot/aketawa.gif' title='capek'>",
					"<img src='../livechat/emot/amarah.gif' title='cemen'>",
					"<img src='../livechat/emot/amelet.gif' title='cool'>",
					"<img src='../livechat/emot/anangis.gif' title='galau'>",
					"<img src='../livechat/emot/bye.gif' title='kedip'>",
					"<img src='../livechat/emot/maki-maki.gif' title='kesetrum'>",
					"<img src='../livechat/emot/marah.gif' title='lol'>",
					"<img src='../livechat/emot/murung.gif' title='mewek'>",
					"<img src='../livechat/emot/nangis.gif' title='nangis'>",
					"<img src='../livechat/emot/sedih.gif' title='nyengir'>",
					"<img src='../livechat/emot/smile.gif' title='psimis'>",
					"<img src='../livechat/emot/bonus.png' title='rokok'>",
					"<img src='../livechat/emot/asakit.gif' title='hay'>");
		$pesan=str_replace($symbol,$icon,$text_awal);
	
		// Ini Emoticon
		echo "<p><span class='label label-info text-center'><i class='icon-user icon-white'></i> ".$ulangi['nick']." </span><small>&nbsp;".$pesan."</small>
		<small class='muted'>(".$ulangi['waktu'].")</small></p>";	
	}
?>