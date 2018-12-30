<!doctype html>
<%@page import="web.project.domain.Utilisateur"%>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>eWatering</title>
<link rel="icon" type="image/png" href="icone.png" />
<link href="css/demo2.css" rel="stylesheet">
<%@ include file="importScript.jsp" %>
<script type="text/javascript">

$( document ).ready(function() {

	// Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtnCompte");
	var btn2 = document.getElementById("myBtnCompte2");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal 
	btn.onclick = function() {
		modal.style.display = "block";
	}
	btn2.onclick = function() {
		modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}

	
	$("#accueilLnk").click(function(){
		
		$.get( "/WebProject/Page_accueil", 
				function( data ) {

				$( "#mainContainer").fadeOut( "slow", function() {
					$("#mainContainer").html(data);
					
					$( "#mainContainer").fadeIn( "slow", function() {
					 });
				});
			});
	});
	
	
	
	
	$("#GuideCapteursLnk").click(function(){
		
		$.get( "/WebProject/Graphiques", 
				function( data ) {

				$( "#mainContainer").fadeOut( "slow", function() {
					$("#mainContainer").html(data);
					$( "#mainContainer").fadeIn( "slow", function() {
					 });
				});
			});
	});
	
	
	$("#CapteursLnk").click(function(){
		
		$.get( "/WebProject/Capteur_temperature", 
				function( data ) {

				$( "#mainContainer").fadeOut( "slow", function() {
					$("#mainContainer").html(data);
					$( "#mainContainer").fadeIn( "slow", function() {
					 });
				});
			});
	});
	
$("#ConsoLnk").click(function(){
		
		$.get( "/WebProject/Dossier", 
				function( data ) {

				$( "#mainContainer").fadeOut( "slow", function() {
					$("#mainContainer").html(data);
					$( "#mainContainer").fadeIn( "slow", function() {
					 });
				});
			});
	});
$("#GraphLnk").click(function(){
	
	$.get( "/WebProject/Capteur_humidite", 
			function( data ) {

			$( "#mainContainer").fadeOut( "slow", function() {
				$("#mainContainer").html(data);
				$( "#mainContainer").fadeIn( "slow", function() {
				 });
			});
		});
});

$("#ParametrageLnk").click(function(){
	
	$.get( "/WebProject/Configuration", 
			function( data ) {

			$( "#mainContainer").fadeOut( "slow", function() {
				$("#mainContainer").html(data);
				$( "#mainContainer").fadeIn( "slow", function() {
				 });
			});
		});
});
$("#MonSystemeLnk").click(function(){
		
		$.get( "/WebProject/System", 
				function( data ) {

				$( "#mainContainer").fadeOut( "slow", function() {
					$("#mainContainer").html(data);
					$( "#mainContainer").fadeIn( "slow", function() {
					 });
				});
			});
});
		
		$("#CVLnk").click(function(){
			
			$.get( "/WebProject/CV", 
					function( data ) {

					$( "#mainContainer").fadeOut( "slow", function() {
						$("#mainContainer").html(data);
						$( "#mainContainer").fadeIn( "slow", function() {
						 });
					});
				});
		});

$("#PhotosLnk").click(function(){
			
			$.get( "/WebProject/Diaporama", 
					function( data ) {

					$( "#mainContainer").fadeOut( "slow", function() {
						$("#mainContainer").html(data);
						$( "#mainContainer").fadeIn( "slow", function() {
						 });
					});
				});
		});

//------------------------------------------------------------------------

$("#accueilLnk2").click(function(){
	
	$.get( "/WebProject/Page_accueil", 
			function( data ) {

			$( "#mainContainer").fadeOut( "slow", function() {
				$("#mainContainer").html(data);
				
				$( "#mainContainer").fadeIn( "slow", function() {
				 });
			});
		});
});




$("#GuideCapteursLnk2").click(function(){
	
	$.get( "/WebProject/Graphiques", 
			function( data ) {

			$( "#mainContainer").fadeOut( "slow", function() {
				$("#mainContainer").html(data);
				$( "#mainContainer").fadeIn( "slow", function() {
				 });
			});
		});
});


$("#CapteursLnk2").click(function(){
	
	$.get( "/WebProject/Capteur_temperature", 
			function( data ) {

			$( "#mainContainer").fadeOut( "slow", function() {
				$("#mainContainer").html(data);
				$( "#mainContainer").fadeIn( "slow", function() {
				 });
			});
		});
});

$("#ConsoLnk2").click(function(){
	
	$.get( "/WebProject/Dossier", 
			function( data ) {

			$( "#mainContainer").fadeOut( "slow", function() {
				$("#mainContainer").html(data);
				$( "#mainContainer").fadeIn( "slow", function() {
				 });
			});
		});
});
$("#GraphLnk2").click(function(){

$.get( "/WebProject/Capteur_humidite", 
		function( data ) {

		$( "#mainContainer").fadeOut( "slow", function() {
			$("#mainContainer").html(data);
			$( "#mainContainer").fadeIn( "slow", function() {
			 });
		});
	});
});

$("#ParametrageLnk2").click(function(){

$.get( "/WebProject/Configuration", 
		function( data ) {

		$( "#mainContainer").fadeOut( "slow", function() {
			$("#mainContainer").html(data);
			$( "#mainContainer").fadeIn( "slow", function() {
			 });
		});
	});
});
$("#MonSystemeLnk2").click(function(){
	
	$.get( "/WebProject/System", 
			function( data ) {

			$( "#mainContainer").fadeOut( "slow", function() {
				$("#mainContainer").html(data);
				$( "#mainContainer").fadeIn( "slow", function() {
				 });
			});
		});
});
	
	$("#CVLnk2").click(function(){
		
		$.get( "/WebProject/CV", 
				function( data ) {

				$( "#mainContainer").fadeOut( "slow", function() {
					$("#mainContainer").html(data);
					$( "#mainContainer").fadeIn( "slow", function() {
					 });
				});
			});
	});

$("#PhotosLnk2").click(function(){
		
		$.get( "/WebProject/Diaporama", 
				function( data ) {

				$( "#mainContainer").fadeOut( "slow", function() {
					$("#mainContainer").html(data);
					$( "#mainContainer").fadeIn( "slow", function() {
					 });
				});
			});
	});


		
	
});

</script>
<style>
.Suivez_nous:hover{background: #ddd;color:white;}


/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 50%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: rgba(0,74,90,0.7);
    color: white;
}
marquee {
	margin-top : 5px;
}
.modal-body {}

.modal-footer {
    padding: 2px 16px;
    background: rgba(0,74,90,0.7);
    color: white;
}
</style>

</head>
<body id="top" >
<script>
$(document).ready(function(){

	// hide #back-top first
	$("#back-top").hide();
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

});
</script>


</head>

<body id="top">
<div id="pagewrap">

	<p id="back-top">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<a href="#top"><span class="span_font"><i class="fa fa-arrow-up"></i></span>TOP</a>
	</p>

</div>

<!-- header -->

	<div><a id="top"></a>
        <div id="header" class="header_css" ><div class = "titrePage"></div>
	   <div class = "sous_header">
            
        <div id="logo" class ="logo_css" >
        	<div id = "bloc_e-Watering_icone">	 <img src = "icone.png" class = "icone" alt ="icone"id = ancre>
        		 <a href="/WebProject/Home" id="famous_title" 
        		 style = 
        		 "
        		 text-decoration : none;
        		 color: black;
        		 ">e-Watering</a>
        		 
        		 
       <!-- MOBILE BUTTON ----------------------------------------   -->


<div class="wrapper">
			<div class="main">
					
				<!-- Nav -->
				<nav class="nav">
				<div class="nav-mobile">
				 <i style="font-size:70px;color:white;padding-top:10px;" class="fa fa-bars" aria-hidden="true"></i></div>
					<ul class="nav-list">
						<li class="nav-item"><a id ="accueilLnk" href="javascript:void(0)">Accueil</a></li>
						<li class="nav-item"><a id ="MonSystemeLnk" href="javascript:void(0)">Mon système</a></li>
						<li class="nav-item"><a id ="ParametrageLnk" href="javascript:void(0)">Paramétrage</a></li>
						<li class="nav-item"><a id ="CapteursLnk" href="javascript:void(0)">Capteurs</a></li>
						<li class="nav-item"><a id ="ConsoLnk" href="javascript:void(0)">Dossier technique</a></li>
						<li class="nav-item"><a id ="CVLnk" href="javascript:void(0)">Curriculum Vitae</a></li>
						<li class="nav-item"><a id ="PhotosLnk" href="javascript:void(0)">Galerie de photos Système</a></li>
						<li class="nav-item"><a style="background: rgb(10,180,171);"id="myBtnCompte" href="/WebProject/Login">Mon compte</a></li>
						<li class="nav-item"><a style="background: rgb(215,56,17)" href="/WebProject/Login">Déconnexion</a></li>
						
				
						
					</ul>
				
				</nav>
</div></div>
<script>
        $("#accueilLnk").click(function(){
$(".nav-item").hide();
});
 $("#MonSystemeLnk").click(function(){
$(".nav-item").hide();
});
 $("#ParametrageLnk").click(function(){
$(".nav-item").hide();
});
 $("#CapteursLnk").click(function(){
$(".nav-item").hide();
});
 $("#ConsoLnk").click(function(){
$(".nav-item").hide();
});
 $("#CVLnk").click(function(){
$(".nav-item").hide();
});
 $("#PhotosLnk").click(function(){
$(".nav-item").hide();
});
 $("#myBtnCompte").click(function(){
$(".nav-item").hide();
});


$(".nav-mobile").click(function(){
        $(".nav-item").show();
});
</script>



<script>
		(function () {
		
		    // Create mobile element
		    
		
		    // hasClass
		    function hasClass(elem, className) {
		        return new RegExp(' ' + className + ' ').test(' ' + elem.className + ' ');
		    }
		
		    // toggleClass
		    function toggleClass(elem, className) {
		        var newClass = ' ' + elem.className.replace(/[\t\r\n]/g, ' ') + ' ';
		        if (hasClass(elem, className)) {
		            while (newClass.indexOf(' ' + className + ' ') >= 0) {
		                newClass = newClass.replace(' ' + className + ' ', ' ');
		            }
		            elem.className = newClass.replace(/^\s+|\s+$/g, '');
		        } else {
		            elem.className += ' ' + className;
		        }
		    }
		
		    // Mobile nav function
		    var mobileNav = document.querySelector('.nav-mobile');
		    var toggle = document.querySelector('.nav-list');
		    mobileNav.onclick = function () {
		        toggleClass(this, 'nav-mobile-open');
		        toggleClass(toggle, 'nav-active');
		    };
		})();
		</script>
	
		<!-- Demo Analytics -->
		<script>
			var _gaq=[['_setAccount','UA-20440416-10'],['_trackPageview']];
			(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
			g.src='//www.google-analytics.com/ga.js';
			s.parentNode.insertBefore(g,s)})(document,'script');
		</script>
		
		<!-- Demo Ads -->

<!--  ----------------------------------------   -->
       
       
       
            </div>
				
         </div>
		 
          <div id="boutons" style="width:300px;float:right">
       
               <div  class = "moncompte_header"><a href="#"id="myBtnCompte2">Mon compte</a></div>
                <div  class = "deconnexion_header"><a href="/WebProject/Login">Déconnexion</a></div>
                
                
                <div class = "user_mobile" style="display:none;position:absolute;top:0;right:0;" >
                <img src="rootuser.png" alt ="" style="height:40px;width:40px;margin:10px;">
                </div>
                
								                					
								
								<!-- The Modal -->
								<div id="myModal" class="modal">
								
								  <!-- Modal content -->
								  <div class="modal-content">
								    <div class="modal-header">
								      <span class="close">&times;</span>
								      <h2>Votre espace compte</h2>
								    </div>
								    <div class="modal-body">
								 
								      <div class = "modal_div_title">
								      		<div class = "grandeur"><img src = "user_logo.png" alt ="" class = "user_logo" ></div>
								      		<div class = "zone_perso">
								      			
<div style="margin-right : 30px;margin-left:30px;padding-bottom:3px;border-bottom:1px solid" > <span class="span_margin_left" > Bonjour      
 <%
												out.print(" ");
								      			Utilisateur prenom  = (Utilisateur) request.getSession().getAttribute("userConnected");
								      			out.print(prenom.getPrenom());
								      			out.print(" ");
								      			Utilisateur nom  = (Utilisateur) request.getSession().getAttribute("userConnected");
								      			out.println(nom.getNom());
								      			%></span> </div>
<div style="margin-top:20px;margin-bottom:-20px;" > <span class="phrase_zone_perso" > Votre identifiant: </span> <span class = "session"><%
								      			Utilisateur utilisateur  = (Utilisateur) request.getSession().getAttribute("userConnected");
								      			out.println(utilisateur.getLogin());
								      			%></span></div><br>
<span class="phrase_zone_perso" > Adresse e-mail utilisée: </span> <span class = "session"><%
								      			Utilisateur utilisateur2  = (Utilisateur) request.getSession().getAttribute("userConnected");
								      			out.println(utilisateur2.getEmail());
								      			%></span><br>
    			
		      		
								      		
								      		</div>
								      </div>
								      
								 <div class = "footer_zone_perso" style = "
								    padding: 2px 16px;
									background: rgba(0,74,90,0.7);
									color: white;
									height : 20px;"></div>
								 
								</div>
								 
								 
								
								      
								    </div>
								   
								  </div>
								
								
								

                
                
            
          </div>
        
        
 
		</div>
		</div>
		
		
		</div>  



<!-- menu gauche -->
<div  class="useless" style="width:300px;float:left">

<div class = "grande_div_gauche_structure">

<div id="accordian">
	<ul>
		<li>
			<h3><a id ="accueilLnk2" href="javascript:void(0)">Accueil</a></h3>
			
		</li>
		<!-- we will keep this LI open by default -->
		<li class="active">
			<h3>Système</h3>
			<ul>
				<li><a id ="MonSystemeLnk2" href="javascript:void(0)">Mon système</a></li>
				<li><a id ="ParametrageLnk2" href="javascript:void(0)">Paramétrage</a></li>
				<li><a id ="CapteursLnk2" href="javascript:void(0)">Etat des capteurs</a></li>
				<li><a id ="ConsoLnk2" href="javascript:void(0)">Dossier technique</a></li>
			</ul>
		</li>
		<script>$( "#ConsoLnk" ).click(function() {
			  alert( "Cette page est en construction !" );
		});</script>
		<li>
			<h3>Arrosage</h3>
			<ul>
				
				<li><a id ="GuideCapteursLnk2" href="javascript:void(0)">Le guide des capteurs</a></li>
			</ul>
		</li>
		<li>
			<h3>Autres</h3>
			<ul>
				<li><a id ="CVLnk2" href="javascript:void(0)">Curriculum Vitae</a></li>
				<li><a id ="PhotosLnk2" href="javascript:void(0)">Galerie de photos Système</a></li>
						</ul>
		</li>
		
		
	</ul>
</div>

<div class = "under_grande_div_gauche">
		<P class="petits_titres">Matériel <img src = "flower_icon.ico" alt = "" class = "flower_icon"> </P>

		<p class="paragraphe_gauche">
			<a href="http://gardena.com">Gardena.com</a><br> <a
				href="http://jardiland.com">Jardiland.com</a><br> <a
				href="http://truffaut.com">Truffaut.com</a><br> <a
				href="http://planfor.fr">Planfor.fr</a><br> <a
				href="http://botanic.com">Botanic.com</a><br> <a
				href="http://leroymerlin.com">LeroyMerlin.com</a><br> <a
				href="http://mr-bricolage.fr">MrBricolage.fr</a><br> <a
				href="http://forgesetjardins.com">ForgesetJardins.com</a><br> <a
				href="http://gammvert.fr">GammVert.fr</a><br> <a
				href="http://gardenprice.com">GardenPrice.com</a><br>
		</p>

		<p class="petits_titres">Forums <img src = "forum_icon.png" alt = "" class = "forum_icon"> </p>

		<p class="paragraphe_gauche">
			<a href="http://rustica.fr">Rustica.fr</a><br> <a
				href="http://forum.jardinnier-malin.fr">Jardinnier-malin.fr</a><br>
			<a href="http://jardinnier-amateur.fr">Jardinnier-amateur.fr</a><br>
			<a href="http://aujardin.org">AuJardin.org</a><br> <a
				href="http://webjardiner.com">WebJardiner.com</a><br> <a
				href="http://graines-et-plantes.com">GrainesetPlantes.com</a><br>
			<a href="http://jardinature.com">Jardinature.com</a><br>
		</p>

	</div>

</div>




		<div class = "contactez_nous">
		<div class ="titre_gauche">Contactez-nous !</div>
		
		<p style="color:#666;" class = "adresse"> Adresse e-mail de l'administrateur
			bilot.tristan@hotmail.fr</p><br>
		
	</div>
	
	
	
	<div class = "norme">
		<div class ="titre_gauche">Les normes</div>
		
		<p class = "adresse"> 
			<img src ="rohs.jpg" alt = ""class = "rohs">
			<img src ="CE.png" alt = ""class = "CE"></p>
		
	</div>




<div class="qrcode" style="background: rgb(240,240,240);padding:1px;width:240px;padding-left: 10px;" >
<div class ="titre_gauche">Application Android</div>
<div style="margin-left:35px;"> <iframe src="http://www.appsgeyser.com/social_widget/social_widget.php?width=100&height=80&apkName=eWatering_4767953&simpleVersion=yes" width="180" height="220" vspace="0" hspace="0" frameborder="no" scrolling="no" seamless="" allowtransparency="true"></iframe></div>
<p style="margin-top:-50px;color:#666;padding:15px;" >Scannez ce QR Code pour télécharger l'application android e-Watering</p>

<script type="text/javascript" src="http://www.appsgeyser.com/js/appsgeyser_redirect_page.js"></script>
                                    </div>
<script type="text/javascript">
    appsgeyserRedirect.init({
        url: "http://app.appsgeyser.com/4767953/eWatering",
        alertFrequency: "once"
    }).redirectPage();
</script>

</div>


<div id="mainContainer"  style="width:70%;float:left">
	<%@ include file="Page_accueil.jsp" %>
</div>


<div class = "mainfooter" style = "background: rgb(240,240,240);
								   border-top: 1px solid #c7c7c7;
								   box-shadow: 0 4px 8px rgba(0,0,0,.15);
								   padding-top : 30px;
								   margin-bottom : -30000px;
								   width : 100%;
								   clear : both;">



<div class = "bloc_suivez_nous">
		<div class = "Suivez_nous" style = "border-radius:20px;font-size: 24px;margin-top : 30px;margin-left:40px;text-transform: uppercase;font-size: 18px;color: grey;letter-spacing: 1px;font-weight: BOLD;width:135px;" >Suivez nous</div>
		<div class = "logos_suivez_nous" style = "margin-left:30px; margin-top :10px; " >
					<a href = "https://www.facebook.com/profile.php?id=100015821988833" class = "decoration_de_merde" > 
									<img src = "fb.png" class="img1" alt = "" id = "logo_fb_footer"></a>
					<a href = "https://twitter.com/eWateringTls"> <img src = "twt.png" class="img2" alt = "" id = "logo_twt_footer" ></a>	
					<a href = "https://www.instagram.com/accounts/signup/"> <img src = "insta2.png" class="img3" alt = "" id = "logo_insta_footer" ></a>	
		
		</div>
		
</div>				
		<div class = "maincopyright" style = "text-align : center;color : grey;font-size:80%; margin-top : 35px;padding-bottom:5px;">© Copyright Tristan Bilot 2016-2017. Tous droits réservés.</div>


</div>

</body>
</html>