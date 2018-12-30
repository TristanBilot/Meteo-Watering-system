<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-Watering</title>
<link rel="icon" type="image/png" href="icone.png" />

<link rel="stylesheet" href="css/Connexion.css" />
<link rel="stylesheet" type="text/css" href="css/toolbar.css" />
<link rel="stylesheet" href="menu.css" /> 
<link rel="stylesheet" type="text/css" href="css/menu.css" />
<link rel="stylesheet" href="css/Header.css" /> 
<link rel="stylesheet" href="css/Marge.css" /> 
<link rel="stylesheet" href="css/MargeSimple.css" /> 
<%@ include file="importScript.jsp" %>
<script>



$( document ).ready(function() {

	$( document ).keypress(function( event ) {
		  if ( event.which == 13 ) {
			  
			  $("#connexionContainer").hide();

			  $("#connexionMessage").show();
			  
			  $.post( "/WebProject/Authentification", 
						{ identifiant: $("#identifiant").val(), 
						password: $("#pw").val(), 
						},	
						function( data ) {	
							
							if(data){
						  		window.location.href="Home";
							} else {
								$('#error_msg').show();
								  $("#connexionContainer").show();

								  $("#connexionMessage").hide();
							}
							
						}); 
		  }
		  
		});
	
	
	$('#inscriptionLnk').hide();

	
	
	function controlField() {
		if($("#login").val()
			&& $("#password").val()
			&& $("#name").val()
			&& $("#prenom").val()
			&& $("#adressemail").val()
			&& $("#reponsesecrete").val()) {
			
			$('#inscriptionLnk').show();
		} else {
			$('#inscriptionLnk').hide();
		}
	}
	
	$("#login").keypress(function(){
		controlField();
	});
	
	$("#password").keypress(function(){
		controlField();
	});
	
	$("#name").keypress(function(){
		controlField();
	});
	$("#prenom").keypress(function(){
		controlField();
	});
	$("#adressemail").keypress(function(){
		controlField();
	});
	$("#reponsesecrete").keypress(function(){
		controlField();
	});
	
	
	$("#inscriptionLnk").click(function(){
		
		$.post( "/WebProject/Inscription", 
				{ login: $("#login").val(), 
				password: $("#password").val(), 
				name: $("#name").val(),
				prenom: $("#prenom").val(), 
				adressemail: $("#adressemail").val(), 
				reponsesecrete: $("#reponsesecrete").val()
				},	
				function( data ) {	
					if(data) {
							alert('user déjà existant');
					} else {
					
					myModal.style.display = "none";
					myModalSuccess.style.display = "block";
						
					}
				}); 
	});
	
	$("#connexionBtnLnk").click(function(){
			
		$("#connexionContainer").hide();

		  $("#connexionMessage").show();
		  
		  $.post( "/WebProject/Authentification", 
					{ identifiant: $("#identifiant").val(), 
					password: $("#pw").val(), 
					},	
					function( data ) {	
						
						if(data){
					  		window.location.href="Home";
						} else {
							$('#error_msg').show();
							  $("#connexionContainer").show();

							  $("#connexionMessage").hide();
						}
						
					}); 
		}); 
	
	

	
	
	// Get the modal
	var modalPerdu = document.getElementById('myModalPerdu');
	
	// Get the button that opens the modal
	var btnPerdu = document.getElementById("myBtnPerdu");
	
	// Get the <span> element that closes the modal
	var spanPerdu = document.getElementsByClassName("closePerdu")[0];
	
	// When the user clicks the button, open the modal 
	btnPerdu.onclick = function() {
		modalPerdu.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	spanPerdu.onclick = function() {
	    modalPerdu.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modalPerdu.style.display = "none";
	    }
	}
	
	
	
});

</script>
<style>
/* The Modal (background) */
.modal, .modalPerdu, .modalSuccess {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    padding-top: 50px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    z-index: 30;
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 500px;
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
.close, .closePerdu, .closeSuccess, .closemdp {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus,
.closePerdu:hover,
.closePerdu:focus,
.closeSuccess:hover,
.closeSuccess:focus,
.closemdp:focus,
.closemdp:hover {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
text-align:center;
    padding: 2px 16px;
    background: rgba(0,74,90,0.7);
    color: white;
}

.modal-body {}

.modal-footer {
    padding: 2px 16px;
    background: rgba(0,74,90,0.7);
    color: white;
}
</style>


</head>
<body>


  
</head>

<body>

	<script type="text/javascript">

var btAccueil = document.getElementById("btAccueil");
</script>

	<div>
        <div id="header2" class="header_css" ><div class = "titrePage"></div>
	   <div class = "sous_header">
            
        <div id="logo_head">  
        	<div id = "bloc_e-Watering_icone">	 <img src = "icone.png" class = "icone" alt ="icone"id = ancre>
        		 e-Watering
            </div>
				
         </div>
 
		</div>
		</div>
		</div>  
</head>
<body>
 




<div>


	<div class="formulaire" >
		
		
		<div class = "header_form">
			<h2>Bienvenue sur le portail e-Watering</h2></div>
			
			<div class = "padding_form">
			<p class="phrase">Veuillez saisir vos identifiants pour vous
				connecter.</p>
				<form id="form">
			<p class="id">Identifiant</p>
			<p>
				<input type="text" id = "identifiant" name="identifiant" class="trait_password" required />
			</p>
			<p class="mp">Mot de passe</p>
			<p>
				<input type="password" id = "pw" name="password" class="trait_password2" required/>
			</p>
		</form>
			<div class="trait"></div>
			<div id = "error_msg" style = "display:none;color:red;margin-top:10px;font-size:16px;" >Erreur d'authentification</div>

			<div class="mot_de_passe_oublie">
				<div class="ensemble">
				
					<a href="#" class="a1" id="myBtnCompte">Créez vous un compte !</a>
					<a href="#" class="a2" id = "myBtnPerdu" >Mot de passe perdu</a>
					 
				</div>
			</div>
			<div id ="connexionContainer">
				<a id = "connexionBtnLnk" class="lien_btn" href="javascript:void(0)" method = "post" > <input
						type="submit" name="lien1" value="Connexion" class="btn">
					</a>
			</div>
			<div id="connexionMessage" style="display:none;float:right;margin-top:40px;margin-right:10px;">
				Connexion en cours...
				<img src="ajax-loader2.gif">
			</div>
			</div>
			<div class = "footer_form"></div>
		
		
		
			<!-- The Modal -->
								<div id="myModal" class="modal">
								
								  <!-- Modal content -->
								  <div class="modal-content">
								    <div class="modal-header">
								      <span class="close">&times;</span>
								      <h2 style= "color : white;
								      			  font-size : 27px;
								      			  text-align : center;
								      			  width : 100%;
								      			  padding: 2px 16px;
								      			  letter-spacing:1px;
								      			  border-bottom : none;" >INSCRIPTION</h2>
								    </div>
								    <div class="modal-body">
								 
								      <div class = "modal_div_title">
								      		<div class = "grandeur"><img src = "user_logo.png" alt ="" class = "user_logo" ></div>
								      		<div class = "zone_perso">
								      		
								      		
								      	
								      		<p class="title_perso_merci">Merci de remplir tous les champs</p>
							
			<p>
				<input type="text" id = "login" name="login" class="trait_password_perso" required placeholder = "Identifiant" />
			</p>
			<p>
				<input type="password" id = "password" name="password" class="trait_password2_perso" required placeholder = "Mot de passe"/>
			</p>
			<p>
				<input type="text" id = "name" name="name" class="trait_password2_perso" required placeholder = "Nom"/>
			</p>
			<p>
				<input type="text" id = "prenom" name="prenom" class="trait_password2_perso" required placeholder = "Prenom"/>
			</p>
			<p>
				<input type="text" id = "adressemail" name="adressemail" class="trait_password2_perso" required placeholder = "Adresse e-mail"/>
			</p>
			<p>
				<input type="text" id = "reponsesecrete" name="reponsesecrete" class="trait_password2_perso" required placeholder = "Question secrète: votre sport préféré?"/>
			</p>
			
								      		<a id = "inscriptionLnk" class="lien_btn" href="javascript:void(0)"> <input
						type="submit" name="lien1" value="Envoyer" class="btn_perso">
					</a>
								      	
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
								
								
						<div id="myModalSuccess" class="modalSuccess">
								
								  <!-- PAGE DE CONFIRMATION D'INSCRIPTION -->
								  <div class="modal-content">
								    <div class="modal-header">
								      <span class="closeSuccess">&times;</span>
								      <h2 style= "color : white;
								      			  font-size : 27px;
								      			  text-align : center;
								      			  width : 100%;
								      			  padding-top : 5px;
								      			  border-bottom : none;" >Confirmation d'inscription</h2>
								    </div>
								    <div class="modal-body">
								 
								      <div class = "modal_div_title">
								      			<div style="">
								      		
<h2 style="font-size: 25px;
line-height: 1.27273;
font-weight: 600;
letter-spacing: 1px;
margin-top:20px;
color: #555;
text-align:center;" >COMPTE ENREGISTRE</h2>
<div style="text-align:center;margin:20px;">
								      		<a href="/WebProject/Login" class="title_perso_merci">Vous pouvez désormais vous connecter</a>
							</div>
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
								  <script>
								  
								// Get the modal
									var modalSuccess = document.getElementById('myModalSuccess');
									
									var spanSuccess = document.getElementsByClassName("closeSuccess")[0];
									
									// When the user clicks on <span> (x), close the modal
									spanSuccess.onclick = function() {
									    modalSuccess.style.display = "none";
									}
									
									// When the user clicks anywhere outside of the modal, close it
									window.onclick = function(event) {
									    if (event.target == modal) {
									        modal.style.display = "none";
									    }
									}</script>
								  
								
								
            
          </div>
        
        <script>
 // Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtnCompte");
	
	// Get the <span> element that closes the modal
	var close = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	    modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	close.onclick = function() {
	    modal.style.display = "none";
	}
	
	
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	    
	
	}</script>
	
			
			<div id="myModalPerdu" class="modal">
								
								  <!-- Modal content -->
								  <div class="modal-content">
								    <div class="modal-header">
								      <span class="closePerdu">&times;</span>
								      <h2 style="letter-spacing: 1px;padding: 2px 16px;" >ESPACE COMPTE</h2>
								    </div>
								    <div class="modal-body">
								 
								    <div class = "zone_persoPerdu">
								      		
								      		
								      	
								      		<p class="title_perso_merciPerdu">Remplissez les champs pour récupérer vos identifiants</p>
							
								      	<p><span  class = "etoile">*</span> 
				<input type="text" id = "reponsesecrete" name="reponsesecrete" class="trait_password2_perso" required placeholder = "Votre adresse e-mail"/>
										</p>
										<p><span  class = "etoile">*</span>
				<input type="text" id = "reponsesecrete" name="reponsesecrete" class="trait_password2_perso" required placeholder = "Votre identifiant"/>
										</p>
										<p><span  class = "etoile">*</span>
				<input type="text" id = "reponsesecrete" name="reponsesecrete" class="trait_password2_perso" required placeholder = "Question secrète: votre sport préféré?"/>
										</p>
								      	
								      <a class="lien_btn" id ="btnEnvoyerPerdu" href="javascript:void(0)"> <input
						type="submit" name="lien1" value="Envoyer"  class="btn_persoPerdu">
					</a>
								      		
								      		</div>
								      </div>
								      
								 <div class = "footer_zone_perso" style = "
								    padding: 2px 16px;
									background: rgba(0,74,90,0.7);
									color: white;
									height : 20px;"></div>
								
								      
								    </div>
								   </div>
								   
								   <script>
								  

									// Get the modal
									var modalPerdu = document.getElementById('myModalPerdu');
									
									// Get the button that opens the modal
									var btnPerdu = document.getElementById("myBtnPerdu");
									
									// Get the <span> element that closes the modal
									var spanPerdu = document.getElementsByClassName("closePerdu")[0];
									
									// When the user clicks the button, open the modal 
									btnPerdu.onclick = function() {
										modalPerdu.style.display = "block";
									}
									
									// When the user clicks on <span> (x), close the modal
									spanPerdu.onclick = function() {
									    modalPerdu.style.display = "none";
									}
									
									// When the user clicks anywhere outside of the modal, close it
									window.onclick = function(event) {
									    if (event.target == modalPerdu) {
									        modalPerdu.style.display = "none";
									    }
									}
									var btnSuccess = document.getElementbyId('btnEnvoyerSuccess');
									btnSuccess.onclick = function() {
										modalSuccess.style.display = "block";
									}
									
								
								  </script>
								
								
								
            
    <div id = "changemdp" class="modal" style="display:none;" >
    	<div id="changemdpid" class="modal-content" style="width :36%;margin-top:40px;position:relative;" >
								    <div class="modal-header">
								      <span class="closemdp">&times;</span>
								      <h2 style= "color : white;
								      			  font-size:20px;
								      			  padding-top : 5px;
								      			  border-bottom : none;
								      			  margin-right:10px;" >Changez votre mot de passe</h2>
								    </div>
								    <div class="modal-body">
								 
								
				<input type="text" id = "reponsesecrete" name="reponsesecrete"
				style="margin-top :20px;margin-right : 20px;float:left;margin-top:10px;margin-right:10px;margin-left:50px;" class="trait_password2_perso" required placeholder = "Nouveau mot de passe"/>
										
				<input style="margin-right:10px;margin-left:50px;" type="text" id = "reponsesecrete" name="reponsesecrete" class="trait_password2_perso" required placeholder = "Confirmer mot de passe"/>
										
							<div class="input"  style="margin-left:80px;">	<a id="btnmdpid" style="text-decoration:none;" href="javascript:void(0)"> <input  type = "submit" value="Changer" class="chgmdpbtn" 
style="border: none;
padding: 0 15px;
font-size: 19px;
color: #FFF;
font-weight: 600;
line-height: 40px;
height: 50px;
width: 160px;
display: block;
text-align: center;
border-radius: 4px;
-webkit-border-radius: 4px;
-webkit-transition: all 200ms ease-out;
transition: all 200ms ease-out;
overflow: hidden;
text-overflow: ellipsis;
color: #FFF;
background: rgba(0,74,90,0.8);
cursor: pointer;
margin:10px;
margin-left:50px;
" ></a></div>
		
								      		</div></div>
    </div>
			
			
			
			
			<script>
			var changemdp = document.getElementById("changemdp");
			var btnEnvoyerPerdu = document.getElementById("btnEnvoyerPerdu");
			
			btnEnvoyerPerdu.onclick = function() {
				changemdp.style.display = "block";
				modalPerdu.style.display = "none";
			}
			
			var closemdp = document.getElementsByClassName("closemdp")[0];
			var changemdpid = document.getElementById("changemdpid");
			
			closemdp.onclick = function() {
				changemdp.style.display = "none";
			}
			
			window.onclick = function(event) {
			    if (event.target == changemdpid) {
			        changemdp.style.display = "none";
			    }
			}
			
			</script>
			
			
			


	<div class="paragraphe">
		<div class="pourquoisecreeruncompte">Pourquoi se créer un
			compte ?</div>
		<p class = "pave_paragraphe" >
		
		<br>
			Après vous être créé un compte e-Watering, vous pourrez accéder au site en vous connectant
			sur cette page.
			Une fois connecté vous pouvez paramétrer votre système d'arrosage 
			à distance et visualiser les données mesurées par vos capteurs.
			<br> Nous vous conseillons de laisser le zoom de votre navigateur
			à 100% pour de meilleures conditions.
</p>
		<div class="pasencoreinscrit">
						
		</div>

	</div>
	
	</div>
	
	
	<div class = "mainfooter" style = "background: #ececec;
								   border-top: 1px solid #c7c7c7;
								   box-shadow: 0 4px 8px rgba(0,0,0,.15);
								   padding-top : 30px;
								   margin-bottom : -3000px;
								   width : 100%;
								   clear : both;">
								   
				
				
				
				<div class = "bloc_suivez_nous">
						<div class = "Suivez_nous" style = "color : grey;font-weight: bold;font-size: 24px;margin-top : 30px;margin-left:40px;text-transform: uppercase;font-size: 18px;letter-spacing: 1px;font-weight: BOLD;" >Suivez nous</div>
						<div class = "logos_suivez_nous" style = "margin-left:30px; margin-top :10px; " >
									<a href = "https://www.facebook.com/profile.php?id=100015821988833" class = "decoration_de_merde"> <img src = "fb.png" alt = "" id = "logo_fb_footer" class="img1"> </a>
									<a href = "https://twitter.com/eWateringTls"> <img src = "twt.png" alt = "" id = "logo_twt_footer" class="img2" ></a>	
									<a href = "https://www.instagram.com/accounts/signup/"> <img src = "insta2.png" alt = "" id = "logo_insta_footer" class="img3" ></a>	
						
						</div>
						
				</div>				
						<div class = "maincopyright" style = "text-align : center;color : grey;font-size:80%; margin-top : 35px;padding-bottom:5px;">© Copyright Tristan Bilot 2016-2017. Tous droits réservés.</div>
				
				
				</div>
				



</body>
</html>