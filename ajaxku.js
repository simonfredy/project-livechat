$(document).ready(function () {
	// ajax login
	$("#formmasuk").submit(function () {
		var unick = $.trim($("#nick").val());
		var upass = $.trim($("#pass").val());
		if ($("#cokie").is(':checked')) {
			var cokie = $("#cokie").val();
		}
		$.ajax({
			url: 'login.php',
			data: 'nick=' + unick + '&pass=' + upass + '&cokie=' + cokie,
			type: 'POST',
			success: function (hasil) {
				if (hasil == "ok") {
					document.location = "index.php";
				} else {
					$("#masuk").html('Masuk');
					$("#notif").html('<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">&times;</button>Nickname atau Password Salah ! </div>');
					return false;
				}
			},
		});
		return false;
	});

	//ajax daftar
	$("#formdaftar").submit(function () {
		var unick = $("#dnick").val();
		var uemail = $("#email").val();
		var upass = $("#dpass").val();
		$.ajax({
			url: 'daftar.php',
			data: 'nick=' + unick + '&email=' + uemail + '&pass=' + upass,
			type: 'POST',
			success: function (hasil) {
				if (hasil == "ada") {
					$("#dnotif").html('<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">&times;</button> Anda sudah terdaftar ! </div>');
					return false;
				} else if (hasil == "yes") {
					$("#dnotif").html('<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Pendaftaran Berhasil, Tunggu Sebentar ! <img src="alihkan.gif"></div>');

					function alihkan() {
						document.location = "index.php";
					}
					setTimeout(alihkan, 5000);
				} else {
					$("#dnotif").html('<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">&times;</button> Gagal Mendaftar ! </div>');
					return false;
				}
			},
		});
		return false;
	});
	//load pesan
	function ambilpesan() {
		$(".boxpesan").load("ambil.php");
		var con = document.getElementById("boxpesan");
		con.scrollTop = con.scrollHeight;
	}
	setInterval(ambilpesan, 1000);
	//load online
	function ol() {
		$(".boxonline").load("online.php");
	}
	setInterval(ol, 1000);
	//kirim pesan chat
	$("#formpesan").submit(function () {
		var pesan = $(".input-xlarge").val();
		$.ajax({
			url: 'kirim.php',
			type: 'POST',
			data: 'pesan=' + pesan,
			success: function (pesan) {
				// html5 DOM audio play
				var suara = document.getElementById("suara");
				suara.play();
				if (pesan == "terkirim") {
					$(".input-xlarge").val("");
				} else {
					return false;
				}
			},
		});
		return false;

	});
	//hide html audio
	var audio = $('#suara');
	audio.hide();
	//load pesan chat
	function ambilpesan() {
		$("#boxpesan").load("ambil.php");
		var con = document.getElementById("boxpesan");
		con.scrollTop = con.scrollHeight;
	}
	setInterval(ambilpesan, 1000);
	//load emoticon
	$("#emot").popover({
		html: true,
		content: function () {
			// emoticon from www.animated-gifs.eu
			return "<img src='../livechat/emot/akasmaran.gif' title='[kasmaran]' onClick=\"addemot('[kasmaran]')\">" +
				"<img src='../livechat/emot/akedip.gif' title='[kedip]' onClick=\"addemot('[kedip]')\">" +
				"<img src='../livechat/emot/aketawa.gif' title='[ketawa]' onClick=\"addemot('[ketawa]')\">" +
				"<img src='../livechat/emot/amarah.gif' title='[marah]' onClick=\"addemot('[marah]')\">" +
				"<img src='../livechat/emot/amelet.gif' title='[melet]' onClick=\"addemot('[melet]')\">" +
				"<img src='../livechat/emot/anangis.gif' title='[nangis]' onClick=\"addemot('[nangis]')\">" +
				"<img src='../livechat/emot/asakit.gif' title='[sakit]' onClick=\"addemot('[sakit]')\">" +
				"<img src='../livechat/emot/bye.gif' title='[bye]' onClick=\"addemot('[bye]')\">" +
				"<img src='../livechat/emot/maki-maki.gif' title='[maki-maki]' onClick=\"addemot('[maki-maki]')\">" +
				"<img src='../livechat/emot/marah.gif' title='[cmarah]' onClick=\"addemot('[cmarah]')\">" +
				"<img src='../livechat/emot/murung.gif' title='[cmurung]' onClick=\"addemot('[cmurung]')\">" +
				"<img src='../livechat/emot/nangis.gif' title='[cnangis]' onClick=\"addemot('[cnangis]')\">" +
				"<img src='../livechat/emot/sedih.gif' title='[csedih]' onClick=\"addemot('[csedih]')\">" +
				"<img src='../livechat/emot/smile.gif' title='[csenyum]' onClick=\"addemot('[csenyum]')\">" +
				"<img src='../livechat/emot/bonus.png' title='[bonus]' onClick=\"addemot('[bonus]')\">";
		}
	});


});
// function add emot to chat form
function addemot(emot) {
	document.forms[0].pesan.value += " " + emot;
}