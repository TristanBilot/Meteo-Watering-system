<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Page_inscription.css" />
<title>Inscription</title>
<%@ include file="importScript.jsp" %>

<link rel="icon" type="image/png" href="icone.png" />
</head>
<body>

			<div class = "header"> <h1>e-Watering</h1>
			
		</div>
 
<div class = "grande_englobation">

	<div class = "formulaire"> <form action="/WebProject/Inscription" method="post">
		<h2>Inscription</h2>
		<p class = "phrase" >Veuillez remplir tous les champs.</p>
			<p class = "id">Identifiant</p><p><input type="login" name="login" class = "trait_password"/> </p>
			<p class = "mp" >Mot de passe</p><p><input type="password" name="password" class = "trait_password2" /></p>
			<p class = "mp" >Nom</p><p><input type="text" name="name" class = "trait_password2" /></p>
			<p class = "mp" >Prenom</p><p><input type="text" name="prenom" class = "trait_password2" /></p>
			<p class = "mp" >Adresse e-mail</p><p><input type="text" name="adressemail" class = "trait_password2" /></p>
			<p class = "mp" >Quel est votre sport préféré ?</p><p><input type="text" name="reponsesecrete" class = "trait_password2" /></p>
															
			<div class = "trait"> </div>
			
			
			
			<a class = "lien_btn" href="/WebProject/Inscription">
			<input type="submit" name="lien1" value="Inscription" class="btn">
			</a>
					</div></div></form> </div>
					
					
					
					
					
					
		<div class = "paragraphe">
					<div class = "pourquoisecreeruncompte" >Nos engagements</div>
					<p>Une fois votre compte créer, nous stockerons vos informations dans une base de données afin de vous permettre la connexion au site.
					Nous garantissons donc de ne pas divulguer vos informations personnelles.  </p>
					
					<div class = "pasencoreinscrit"><a href = "/WebProject/Login">Retour à la page de connexion</a></div>
					
					</div>
					
					
					
		<div class = "mainfooter" style = "background: #467A86;
								   
								   padding-top : 30px;
								   margin-bottom : -300px;
								   width : 100%;
								   clear : both;">
								   
						<div class = "top_button" style = "height : 50px;
				"><a href = "#header">Haut de page</a></div>
				
				
				<div class = "bloc_suivez_nous">
						<div class = "Suivez_nous" style = "color : white;font-weight: bold;font-size: 24px;margin-top : 30px;margin-left:40px;text-transform: uppercase;font-size: 18px;color: #ffffff;letter-spacing: 1px;font-weight: BOLD;" >Suivez nous</div>
						<div class = "logos_suivez_nous" style = "margin-left:30px; margin-top :10px; " >
									<a href = "#"> <img src = "fb.png" alt = "" id = "logo_fb_footer" style ="height : 45px;width:45px;border-radius:100px;"> </a>
									<a href = "#"> <img src = "twt.png" alt = "" id = "logo_twt_footer" style = "height : 45px;width : 45px;" ></a>	
									<a href = "#"> <img src = "insta2.png" alt = "" id = "logo_insta_footer" style = "height : 45px;width : 45px;border-radius:100px;" ></a>	
						
						</div>
						
				</div>				
						<div class = "maincopyright" style = "text-align : center;color : white;font-size:80%; margin-top : 35px;padding-bottom:5px;">© Copyright Tristan Bilot 2016-2017. Tous droits réservés.</div>
				
				
				</div>
					

</body>
</html>