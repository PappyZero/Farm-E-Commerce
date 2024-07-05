<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://kit.fontawesome.com/c587fc1763.js" crossorigin="anonymous"></script>
    <title>Farmer Registration Portal</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../portal_files/bootstrap.min.css">
    <script>
        function state() {
            var a = document.getElementById('states').value;
            var array = [];
            
            if (a === 'ABIA') {
                array = ['Aba', 'Umuahia', 'Arochukwu', 'Bende', 'Isiala Ngwa North', 'Isiala Ngwa South', 'Isuikwuato', 'Obi Ngwa', 'Ohafia', 'Osisioma', 'Ugwunagbo', 'Ukwa East', 'Ukwa West', 'Umu Nneochi'];
            } else if (a === 'ADAMAWA') {
                array = ['Yola', 'Mubi', 'Numan', 'Ganye', 'Hong', 'Gombi', 'Mayo-Belwa', 'Michika', 'Fufore', 'Guyuk', 'Lamurde', 'Madagali', 'Maiha', 'Shelleng', 'Song', 'Toungo', 'Jimeta'];
            } else if (a === 'AKWA IBOM') {
                array = ['Uyo', 'Ikot Ekpene', 'Eket', 'Oron', 'Abak', 'Ikot Abasi', 'Itu', 'Mbo', 'Etinan', 'Esit Eket', 'Essien Udim', 'Etim Ekpo', 'Ibeno', 'Ibesikpo Asutan', 'Ibiono-Ibom', 'Ika', 'Ikono', 'Ikot Ekpene', 'Ini', 'Mkpat-Enin', 'Nsit-Atai', 'Nsit-Ibom', 'Nsit-Ubium', 'Obot Akara', 'Okobo', 'Onna', 'Oruk Anam', 'Udung-Uko', 'Ukanafun', 'Uruan', 'Urue-Offong/Oruko', 'Uyo'];
            } else if (a === 'ANAMBRA') {
                array = ['Awka', 'Onitsha', 'Nnewi', 'Agulu', 'Amichi', 'Anaku', 'Atani', 'Aguata', 'Anaocha', 'Ayamelum', 'Dunukofia', 'Ekwusigo', 'Idemili North', 'Idemili South', 'Ihiala', 'Njikoka', 'Nnewi North', 'Nnewi South', 'Ogbaru', 'Onitsha North', 'Onitsha South', 'Orumba North', 'Orumba South', 'Oyi'];
            } else if (a === 'BAUCHI') {
                array = ['Bauchi', 'Azare', 'Bununu', 'Bogoro', 'Darazo', 'Dass', 'Ganjuwa', 'Giade', 'Itas/Gadau', 'Jama\'are', 'Katagum', 'Kirfi', 'Misau', 'Ningi', 'Shira', 'Tafawa Balewa', 'Toro', 'Warji', 'Zaki'];
            } else if (a === 'BAYELSA') {
                array = ['Yenagoa', 'Brass', 'Ekeremor', 'Kolokuma/Opokuma', 'Nembe', 'Ogbia', 'Sagbama', 'Southern Ijaw'];
            } else if (a === 'BENUE') {
                array = ['Makurdi', 'Gboko', 'Otukpo', 'Adoka', 'Aliade', 'Apir', 'Buruku', 'Daudu', 'Guma', 'Gwer East', 'Gwer West', 'Katsina-Ala', 'Konshisha', 'Kwande', 'Logo', 'Ogbadibo', 'Ohimini', 'Oju', 'Okpokwu', 'Oturkpo', 'Tarka', 'Ukum', 'Ushongo', 'Vandeikya'];
            } else if (a === 'BORNO') {
                array = ['Maiduguri', 'Bama', 'Biu', 'Dikwa', 'Gwoza', 'Chibok', 'Damboa', 'Gubio', 'Guzamala', 'Hawul', 'Jere', 'Kaga', 'Kala/Balge', 'Konduga', 'Kukawa', 'Kwaya Kusar', 'Mafa', 'Magumeri', 'Marte', 'Mobbar', 'Monguno', 'Ngala', 'Nganzai', 'Shani'];
            } else if (a === 'CROSS RIVER') {
                array = ['Calabar', 'Ikom', 'Ogoja', 'Obudu', 'Akpabuyo', 'Bakassi', 'Bekwarra', 'Biase', 'Boki', 'Etung', 'Obanliku', 'Obubra', 'Odukpani', 'Yakuur', 'Yala'];
            } else if (a === 'DELTA') {
                array = ['Asaba', 'Warri', 'Sapele', 'Agbor', 'Bomadi', 'Burutu', 'Ethiope East', 'Ethiope West', 'Ika North East', 'Ika South', 'Isoko North', 'Isoko South', 'Ndokwa East', 'Ndokwa West', 'Okpe', 'Oshimili North', 'Oshimili South', 'Patani', 'Sapele', 'Udu', 'Ughelli North', 'Ughelli South', 'Ukwuani', 'Uvwie', 'Warri North', 'Warri South', 'Warri South West'];
            } else if (a === 'EBONYI') {
                array = ['Abakaliki', 'Afikpo', 'Onueke', 'Izzi', 'Ezza North', 'Ezza South', 'Ikwo', 'Ishielu', 'Ivo', 'Ohaozara', 'Ohaukwu', 'Onicha'];
            } else if (a === 'EDO') {
                array = ['Benin City', 'Auchi', 'Uromi', 'Abudu', 'Agenebode', 'Ekpoma', 'Fugar', 'Ibillo', 'Igueben', 'Irrua', 'Sabongida-Ora', 'Ubiaja'];
            } else if (a === 'EKITI') {
                array = ['Ado-Ekiti', 'Ikere-Ekiti', 'Oye-Ekiti', 'Aiyekire', 'Efon', 'Ekiti East', 'Ekiti South-West', 'Ekiti West', 'Emure', 'Gbonyin', 'Ido/Osi', 'Ijero', 'Ikole', 'Ilejemeje', 'Irepodun/Ifelodun', 'Ise/Orun', 'Moba'];
            } else if (a === 'ENUGU') {
                array = ['Enugu', 'Nsukka', 'Awgu', 'Enugu East', 'Enugu North', 'Enugu South', 'Ezeagu', 'Igbo Etiti', 'Igbo Eze North', 'Igbo Eze South', 'Isi Uzo', 'Nkanu East', 'Nkanu West', 'Oji River', 'Udenu', 'Udi', 'Uzo Uwani'];
            } else if (a === 'GOMBE') {
                array = ['Gombe', 'Billiri', 'Dukku', 'Funakaye', 'Kaltungo', 'Kwami', 'Nafada', 'Shongom', 'Yamaltu/Deba'];
            } else if (a === 'IMO') {
                array = ['Owerri', 'Orlu', 'Okigwe', 'Aboh Mbaise', 'Ahiazu Mbaise', 'Ehime Mbano', 'Ezinihitte', 'Ideato North', 'Ideato South', 'Ihitte/Uboma', 'Ikeduru', 'Isiala Mbano', 'Isu', 'Mbaitoli', 'Ngor Okpala', 'Njaba', 'Nkwerre', 'Nwangele', 'Obowo', 'Oguta', 'Ohaji/Egbema', 'Okigwe', 'Onuimo', 'Orlu', 'Orsu', 'Oru East', 'Oru West', 'Owerri Municipal', 'Owerri North', 'Owerri West'];
            } else if (a === 'JIGAWA') {
                array = ['Dutse', 'Hadejia', 'Kazaure', 'Gumel', 'Babura', 'Biriniwa', 'Birnin Kudu', 'Buji', 'Dutse', 'Gagarawa', 'Garki', 'Gumel', 'Guri', 'Gwaram', 'Gwiwa', 'Hadejia', 'Jahun', 'Kafin Hausa', 'Kaugama', 'Kazaure', 'Kiri Kasama', 'Kiyawa', 'Maigatari', 'Malam Madori', 'Miga', 'Ringim', 'Roni', 'Sule Tankarkar', 'Taura', 'Yankwashi'];
            } else if (a === 'KADUNA') {
                array = ['Kaduna', 'Zaria', 'Kafanchan', 'Kagoro', 'Sabon Gari', 'Lere', 'Ikara', 'Kubau', 'Makarfi', 'Kudan', 'Giwa', 'Birnin Gwari', 'Igabi', 'Chikun', 'Kajuru', 'Jema\'a', 'Sanga', 'Kaura', 'Jaba', 'Zangon Kataf', 'Kachia', 'Kaduna North', 'Kaduna South'];
            } else if (a === 'KANO') {
                array = ['Kano', 'Wudil', 'Rano', 'Bichi', 'Gwarzo', 'Dawakin Tofa', 'Tofa', 'Tudun Wada', 'Gezawa', 'Bunkure', 'Rimin Gado', 'Kura', 'Kibiya', 'Madobi', 'Makoda', 'Minjibir', 'Ungogo', 'Warawa', 'Dawakin Kudu', 'Gabasawa', 'Garko', 'Gaya', 'Kabo', 'Karaye', 'Shanono', 'Kunchi', 'Tsanyawa', 'Bagwai', 'Kumbotso', 'Kano Municipal', 'Dala', 'Gwale', 'Tarauni', 'Nasarawa', 'Fagge', 'Kiru', 'Albasu', 'Sumaila', 'Ajingi', 'Bebeji', 'Rogo'];
            } else if (a === 'KATSINA') {
                array = ['Katsina', 'Daura', 'Funtua', 'Bakori', 'Batagarawa', 'Batsari', 'Baure', 'Bindawa', 'Charanchi', 'Dan Musa', 'Dandume', 'Danja', 'Daura', 'Dutsi', 'Dutsin-Ma', 'Faskari', 'Funtua', 'Ingawa', 'Jibia', 'Kafur', 'Kaita', 'Kankara', 'Kankia', 'Katsina', 'Kurfi', 'Kusada', 'Mai\'Adua', 'Malumfashi', 'Mani', 'Mashi', 'Matazu', 'Musawa', 'Rimi', 'Sabuwa', 'Safana', 'Sandamu', 'Zango'];
            } else if (a === 'KEBBI') {
                array = ['Birnin Kebbi', 'Argungu', 'Yauri', 'Bagudo', 'Arewa Dandi', 'Augie', 'Bagudo', 'Birnin Kebbi', 'Bunza', 'Dandi', 'Fakai', 'Gwandu', 'Jega', 'Kalgo', 'Koko/Besse', 'Maiyama', 'Ngaski', 'Sakaba', 'Shanga', 'Suru', 'Wasagu/Danko', 'Yauri', 'Zuru'];
            } else if (a === 'KOGI') {
                array = ['Lokoja', 'Okene', 'Kabba', 'Anyigba', 'Idah', 'Ajaokuta', 'Adavi', 'Ankpa', 'Bassa', 'Dekina', 'Ibaji', 'Idah', 'Igalamela-Odolu', 'Ijumu', 'Kabba/Bunu', 'Kogi', 'Lokoja', 'Mopa-Muro', 'Ofu', 'Ogori/Magongo', 'Okehi', 'Okene', 'Olamaboro', 'Omala', 'Yagba East', 'Yagba West'];
            } else if (a === 'KWARA') {
                array = ['Ilorin', 'Offa', 'Omu-Aran', 'Ajase Ipo', 'Bode Saadu', 'Kaiama', 'Lafiagi', 'Oke Ode', 'Patigi', 'Afon', 'Anka', 'Baruten', 'Edu', 'Ekiti', 'Ifelodun', 'Ilorin East', 'Ilorin South', 'Ilorin West', 'Irepodun', 'Isin', 'Kaiama', 'Moro', 'Offa', 'Oke Ero', 'Oyun', 'Patigi'];
            } else if (a === 'LAGOS') {
                array = ['Ikeja', 'Ikorodu', 'Epe', 'Badagry', 'Lagos Island', 'Lagos Mainland', 'Surulere', 'Kosofe', 'Shomolu', 'Agege', 'Alimosho', 'Amuwo Odofin', 'Apapa', 'Eti-Osa', 'Ifako-Ijaiye', 'Ibeju-Lekki', 'Mushin', 'Ojo', 'Oshodi-Isolo'];
            } else if (a === 'NASARAWA') {
                array = ['Lafia', 'Keffi', 'Akwanga', 'Doma', 'Karu', 'Kokona', 'Nasarawa', 'Nasarawa Eggon', 'Obi', 'Toto', 'Wamba', 'Awe'];
            } else if (a === 'NIGER') {
                array = ['Minna', 'Bida', 'Kontagora', 'Suleja', 'Agaie', 'Agwara', 'Bida', 'Borgu', 'Bosso', 'Chanchaga', 'Edati', 'Gbako', 'Gurara', 'Katcha', 'Kontagora', 'Lapai', 'Lavun', 'Magama', 'Mariga', 'Mashegu', 'Mokwa', 'Muya', 'Paikoro', 'Rafi', 'Rijau', 'Shiroro', 'Suleja', 'Tafa', 'Wushishi'];
            } else if (a === 'OGUN') {
                array = ['Abeokuta', 'Ilaro', 'Sagamu', 'Ijebu Ode', 'Ifo', 'Ota', 'Ago Iwoye', 'Aiyetoro', 'Ikenne', 'Remo', 'Ewekoro', 'Obafemi Owode', 'Odeda', 'Odogbolu', 'Ogun Waterside'];
            } else if (a === 'ONDO') {
                array = ['Akure', 'Ondo', 'Owo', 'Ikare', 'Okitipupa', 'Igbokoda', 'Ifon', 'Idanre', 'Igbo', 'Ile Oluji', 'Irele', 'Odigbo', 'Okiti', 'Ose'];
            } else if (a === 'OSUN') {
                array = ['Osogbo', 'Ile-Ife', 'Ilesa', 'Ikirun', 'Iwo', 'Ede', 'Ejigbo', 'Ila-Orangun', 'Ipetumodu', 'Oke-Ila Orangun', 'Ikire', 'Inisa', 'Modakeke', 'Okuku', 'Ibokun', 'Ejigbo'];
            } else if (a === 'OYO') {
                array = ['Ibadan', 'Ogbomosho', 'Oyo', 'Iseyin', 'Saki', 'Igboho', 'Kisi', 'Igbeti', 'Okeho', 'Igboora', 'Eruwa', 'Lalupon', 'Jobele', 'Ilora', 'Fiditi', 'Otu', 'Ago-Are', 'Idere', 'Iwere-Ile', 'Akanran'];
            } else if (a === 'PLATEAU') {
                array = ['Jos', 'Barkin Ladi', 'Bassa', 'Bokkos', 'Jos East', 'Jos North', 'Jos South', 'Kanam', 'Kanke', 'Langtang North', 'Langtang South', 'Mangu', 'Mikang', 'Pankshin', 'Qua\'an Pan', 'Riyom', 'Shendam', 'Wase'];
            } else if (a === 'RIVERS') {
                array = ['Port Harcourt', 'Bonny', 'Bori', 'Degema', 'Emohua', 'Eleme', 'Tai', 'Khana', 'Okrika', 'Opobo', 'Nkoro', 'Oyigbo', 'Ahoada East', 'Ahoada West', 'Akuku-Toru', 'Andoni', 'Asari-Toru', 'Omuma', 'Ogba/Egbema/Ndoni', 'Obio/Akpor', 'Etche', 'Gokana'];
            } else if (a === 'SOKOTO') {
                array = ['Sokoto', 'Wamako', 'Gwadabawa', 'Gada', 'Goronyo', 'Gudu', 'Illela', 'Kebbe', 'Kware', 'Rabah', 'Sabon Birni', 'Shagari', 'Silame', 'Sokoto North', 'Sokoto South', 'Tambuwal', 'Tangaza', 'Tureta', 'Wurno', 'Yabo'];
            } else if (a === 'TARABA') {
                array = ['Jalingo', 'Gembu', 'Wukari', 'Bali', 'Donga', 'Ibi', 'Lau', 'Mutum Biyu', 'Takum', 'Beli', 'Zing', 'Ardo-Kola', 'Ussa', 'Kurmi', 'Karim Lamido', 'Sardauna'];
            } else if (a === 'YOBE') {
                array = ['Damaturu', 'Nguru', 'Gashua', 'Potiskum', 'Bade', 'Bursari', 'Damaturu', 'Fika', 'Fune', 'Geidam', 'Gujba', 'Gulani', 'Jakusko', 'Karasuwa', 'Machina', 'Nangere', 'Nguru', 'Potiskum', 'Tarmuwa', 'Yunusari', 'Yusufari'];
            } else if (a === 'ZAMFARA') {
                array = ['Gusau', 'Kaura Namoda', 'Anka', 'Birnin Magaji', 'Bukkuyum', 'Bungudu', 'Chafe', 'Gummi', 'Maradun', 'Maru', 'Shinkafi', 'Talata Mafara', 'Zurmi'];
            }

            var string = "";
            for (let i = 0; i < array.length; i++) {
                string = string + "<option>" + array[i] + "</option>";
            }
            string = "<select name='district'>" + string + "</select>"
            document.getElementById('district').innerHTML = string;
        }

    </script>
    <style>
    @import url(https://fonts.googleapis.com/css?family=Raleway:300,400,600);
    .myfooter {
        background-color: #292b2c;

        color: goldenrod;
        margin-top: 15px;
    }

    .aligncenter {
        text-align: center;
    }

    a {
        color: goldenrod;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    nav {
        background-color: #292b2c;
    }

    .navbar-custom {
        background-color: #292b2c;
    }

    /* change the brand and text color */
    .navbar-custom .navbar-brand,
    .navbar-custom .navbar-text {
        background-color: #292b2c;
    }

    .navbar-custom .navbar-nav .nav-link {
        background-color: #292b2c;
    }

    .navbar-custom .nav-item.active .nav-link,
    .navbar-custom .nav-item:hover .nav-link {
        background-color: #292b2c;
    }


    .mybtn {
        border-color: green;
        border-style: solid;
    }


    .right {
        display: flex;
    }

    .left {
        display: none;
    }

    .cart {
        margin-right: -9px;
    }

    .profile {
        margin-right: 2px;

    }

    .login {
        margin-right: -2px;
        margin-top: 12px;
        display: none;
    }

    .searchbox {
        width: 60%;
    }

    .lists {
        display: inline-block;
    }

    .moblists {
        display: none;
    }

    .logins {
        text-align: center;
        margin-right: -30%;
        margin-left: 35%;
    }
  body{
        margin: 0;
        font-size: .9rem;
        font-weight: 400;
        line-height: 1.6;
        color: #212529;
        text-align: left;
        background-color: #f5f8fa;
    }

    .my-form, .login-form
    {
        font-family: Raleway, sans-serif;
    }

    .my-form
    {
        padding-top: 1.5rem;
        padding-bottom: 1.5rem;
    }

    .my-form .row
    {
        margin-left: 0;
        margin-right: 0;
    }

    .login-form
    {
        padding-top: 1.5rem;
        padding-bottom: 1.5rem;
    }

    .login-form .row
    {
        margin-left: 0;
        margin-right: 0;
    }
    @media only screen and (min-device-width:320px) and (max-device-width:480px) {

        .right {
            display: none;
            background-color: #ff5500;
        }

        .left {
            display: flex;
        }

        .moblogo {
            display: none;
        }

        .logins {
            text-align: center;
            margin-right: 35%;
            padding: 15px;
        }

        .searchbox {
            width: 95%;
            margin-right: 5%;
            margin-left: 0%;
        }

        .moblists {
            display: inline-block;
            text-align: center;
            width: 100%;
        }

    }
    </style>
</head>

<body>
 
<main class="my-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header" style="background-color:#292b2c"><h4 style="font-style:bold;color:goldenrod">Register as Farmer<h4></div>
						<div class="card-body border border-dark">
							<form name="my-form" action="FarmerRegister.php" method="post">
								<div class="form-group row">
									<label for="full_name" class="col-md-4 col-form-label text-md-right"><i class="fas fa-user mr-2"></i><b>Full Name</b></label>
									<div class="col-md-6">
										<input type="text" id="full_name" class="form-control border border-dark" name="name" placeholder="Enter Your Name" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="phone_number" class="col-md-4 col-form-label text-md-right"><i class="fas fa-phone-alt mr-2"></i><b>Phone Number</b></label>
									<div class="col-md-6">
										<input type="text" id="phone_number" class="form-control border border-dark" name="phonenumber" placeholder="Phone Number" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="present_address" class="col-md-4 col-form-label text-md-right"><i class="fas fa-home mr-2"></i><b>Present Address</b></label>
									<div class="col-md-6">
										<textarea type="text" id="present_address" class="form-control border border-dark" rows="4" name="address" placeholder="Address" required></textarea>
									</div>
								</div>	
							
                                <div class="form-group row">
                                    <label for="states" class="col-md-4 col-form-label text-md-right"><b><i class="fas fa-globe-americas mr-2"></i>State</b></label>
                                    <div class="col-md-6">
                                    <select name="statevalue" id="states" onchange="state()" class="form-control border border-dark">
                                        <option value="0">--Select State--</option>
                                        <option value="ABIA">ABIA</option>
                                        <option value="ADAMAWA">ADAMAWA</option>
                                        <option value="AKWA IBOM">AKWA IBOM</option>
                                        <option value="ANAMBRA">ANAMBRA</option>
                                        <option value="BAUCHI">BAUCHI</option>
                                        <option value="BAYELSA">BAYELSA</option>
                                        <option value="BENUE">BENUE</option>
                                        <option value="BORNO">BORNO</option>
                                        <option value="CROSS RIVER">CROSS RIVER</option>
                                        <option value="DELTA">DELTA</option>
                                        <option value="EBONYI">EBONYI</option>
                                        <option value="EDO">EDO</option>
                                        <option value="EKITI">EKITI</option>
                                        <option value="ENUGU">ENUGU</option>
                                        <!-- <option value="FCT">FCT</option> -->
                                        <option value="GOMBE">GOMBE</option>
                                        <option value="IMO">IMO</option>
                                        <option value="JIGAWA">JIGAWA</option>
                                        <option value="KADUNA">KADUNA</option>
                                        <option value="KANO">KANO</option>
                                        <option value="KATSINA">KATSINA</option>
                                        <option value="KEBBI">KEBBI</option>
                                        <option value="KOGI">KOGI</option>
                                        <option value="KWARA">KWARA</option>
                                        <option value="LAGOS">LAGOS</option>
                                        <option value="NASARAWA">NASARAWA</option>
                                        <option value="NIGER">NIGER</option>
                                        <option value="OGUN">OGUN</option>
                                        <option value="ONDO">ONDO</option>
                                        <option value="OSUN">OSUN</option>
                                        <option value="OYO">OYO</option>
                                        <option value="PLATEAU">PLATEAU</option>
                                        <option value="RIVERS">RIVERS</option>
                                        <option value="SOKOTO">SOKOTO</option>
                                        <option value="TARABA">TARABA</option>
                                        <option value="YOBE">YOBE</option>
                                        <option value="ZAMFARA">ZAMFARA</option>
                                    </select>
                                    </div>
                                </div>    
                                <div class="form-group row">
                                    <label for="states" class="col-md-4 col-form-label text-md-right"><b><i class="fas fa-globe-americas mr-2"></i>District</b></label>
                                    <div class="col-md-6">
                                        <select name="district" id="district" class="form-control border border-dark">>
                                            <option>Select District</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
									<label for="account2" class="col-md-4 col-form-label text-md-right"><i class="fas fa-pencil-alt mr-2"></i><b>PAN No.</b></label>
									<div class="col-md-6">
										<input type="text" id="account2" class="form-control border border-dark" name="pan" placeholder="Pan number" required>
									</div>
								</div>

                                <div class="form-group row">
									<label for="account1" class="col-md-4 col-form-label text-md-right"><i class="fas fa-university mr-2"></i><b>Bank Account No.</b></label>
									<div class="col-md-6">
										<input type="text" id="account1" class="form-control border border-dark" name="account" placeholder="Bank Account number" required>
									</div>
								</div>


								<div class="form-group row">
									<label for="p1" class="col-md-4 col-form-label text-md-right"><i class="fas fa-lock mr-2"></i><b>Password</b></label>
									<div class="col-md-6">
										<input id="p1" class="form-control border border-dark" type="password" name="password" placeholder="Password" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="p2" class="col-md-4 col-form-label text-md-right"><i class="fas fa-lock mr-2"></i><b>Confirm Password</b></label>
									<div class="col-md-6">
										<input id="p2" class="form-control border border-dark" type="password" name="confirmpassword" placeholder="Confirm Password" required>
									</div>
								</div>

								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn btn-primary " style="background-color:#292b2c;color:goldenrod"   name="register" value="Register">
										Register
									</button>
								</div>
                                <br>
                                <div class="col-md-6 offset-md-4">
                                    <label id="account" class="text-left"><a id='link' href="FarmerLogin.php"><b style="color:black"> I Aleady have an account</b></a></label>
                                </div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
   
</body>

</html>


<?php

include("../Includes/db.php");

$ciphering = "AES-128-CTR";
$iv_length = openssl_cipher_iv_length($ciphering);
$options = 0;
$encryption_iv = '2345678910111211';
$encryption_key = "DE";

if (isset($_POST['register'])) {
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $phonenumber = mysqli_real_escape_string($con, $_POST['phonenumber']);
    $address = mysqli_real_escape_string($con, $_POST['address']);
    $account = mysqli_real_escape_string($con, $_POST['account']);
    $pan = mysqli_real_escape_string($con, $_POST['pan']);
    $password = mysqli_real_escape_string($con, $_POST['password']);
    $confirmpassword = mysqli_real_escape_string($con, $_POST['confirmpassword']);
    $district = mysqli_real_escape_string($con, $_POST['district']);
    $state = mysqli_real_escape_string($con, $_POST['statevalue']);

    $encryption = openssl_encrypt(
        $password,
        $ciphering,
        $encryption_key,
        $options,
        $encryption_iv
    );

    if (strcmp($password, $confirmpassword) == 0) {

        $query = "insert into farmerregistration (farmer_name,farmer_phone,
                farmer_address, farmer_state, farmer_district,
                farmer_pan,farmer_bank,farmer_password) 
                values ('$name','$phonenumber','$address',
                '$state','$district','$pan','$account',
                '$encryption')";

        $run_register_query = mysqli_query($con, $query);
        echo "<script>console.log('SucessFully Inserted');</script>";
        echo "<script>window.open('FarmerLogin.php','_self')</script>";
    } else if (strcmp($password, $confirmpassword) != 0) {
        echo "<script>
				alert('Password and Confirm Password Should be same');
			</script>";
    }
}

?>