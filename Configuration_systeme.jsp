
<script type="text/javascript">

$( document ).ready(function() {

	$("#capteurLnk").mouseover(function() {
	    
	  	
		})
	  .mouseout(function() {
	    
		  
	  });
	
	$("#form1lnk").click(function(){
		
		$.post( "/WebProject/Configuration", 
				{ lundi: $("#lundi").val(), 
				mardi: $("#mardi").val(), 
				mercredi: $("#mercredi").val(),
				jeudi: $("#jeudi").val(),
				vendredi: $("#vendredi").val(),
				samedi: $("#samedi").val(),
				dimanche: $("#dimanche").val(),
				heure1 : $("#heure1").val(),
				minute1 : $("#minute1").val(),
				btn_micro1: $("#btn_micro1").val(),
				btn_micro2: $("#btn_micro2").val(),
				btn_micro3: $("#btn_micro3").val()} ,
	}}	
				function( data ) {				
			  		alert('Conf enregistr�')
			});  });
	
});

</script>
    
     <div class = "margeSimple">
     
     
     
     
		<div class ="text"></div>
		<div class = "vide"></div>
			<div class= "titre"><marquee> Param�trage de votre syst�me d'arrosage </marquee></div>
			<div class = "parametre_programmation">
			
			
			<div class = "presentation2"><div class = "titre_presentation3"> G�rez votre syst�me d'arrosage :</div>
				
			<div class = "presentation">La programmation anticip�e de l'activation de votre syst�me e-Watering va vous permettre de vous �viter de vous occuper de votre espace vert donc un consid�rable gain de temps.
				C'est pour cela que nous avon con�u une interface simple pour vous permettre de g�rer au mieux votre syst�me d'arrosage. </div>
			
			
			<div class = "presentation2"><div class = "titre_presentation2"> Diff�rents param�tres sont disponibles sur notre produit :</div>
				 
				
				<ul class = "list" style="list-style: none;" > <li><a href = "#Ibis">Programmer l'arrosage automatique.</a></li>
				 <li><a href = "#ancreII">Programmer un arrosage personnalis�.</a></li>
				 </ul>
				 </div>


<div id = "Ibis">I-Programmez votre arrosage automatique</div>
				
<div class = "presentation2"><div class = "titre_presentation4"> Description du "mode auto" :</div>
Le mode auto est le mode que nous vous conseillons. Gr�ce � ce mode vous n'aurez plus � vous soucier de votre jardin, le syst�me va le faire pour vous.
En effet votre syst�me va s'activer automatiquement lorsque le taux d'humidit� est en dessous de 50%. Ce mode est ce qui fait de ce projet un vrai syst�me automatis� et ind�pendant.		


<div class = "arrosage_auto">	 <div class = "actuellement">Arrosage automatique (conseill�)</div>
			<a  id="btn_alert_activ" class = "lien_btn_complet" href="javascript:void(0)">
			<input type="submit" name="lien1" value="Activer" class="query_activ" id="bouton_complet" title = "En cliquant, vous activerez le mode automatique.">
			</a>
		 
		 	<a id="btn_alert_desactiv" class = "lien_btn_complet" href="javascript:void(0)">
			<input type="submit" name="lien1" value="D�sactiver" class="query_desactiv" id="bouton_complet" title = "En cliquant, vous d�sactiverez le mode automatique.">
			</a>
		 </div>

<script>
$(document).ready(function() {
	$(".query_activ").click(function(){
		$(".arrosage_auto").find(".actuellement").html("Arrosage auto: activ� !");
	});
});

$("#btn_alert_desactiv").click(function(){
	alert("Mode automatique d�sactiv�");
});
$("#btn_alert_activ").click(function(){
	alert("Mode automatique activ�");
});



</script>	
				 
				<div class = "I"id="ancreII">II-Programmez une date qui vous convient !</div>
				
				
<div id="Div"> <div class = "jour_de_depart">Veuillez saisir un jour de d�part : </div>

    
    <div class = "formulaire_coche">
    <input id="lundi" name ="lundi" type="checkbox" value="true"/>Lundi
   
     <br><input id="mardi" name ="mardi" type="checkbox" value="true"/>Mardi
     <br><input id="mercredi" name ="mercredi" type="checkbox" value="true"/>Mercredi
     <br><input id="jeudi" name ="jeudi" type="checkbox" value="true"/>Jeudi
     <br><input id="vendredi" name ="vendredi" type="checkbox" value="true"/>Vendredi
     <br><input id="samedi" name = "samedi" type="checkbox" value="true"/>Samedi
     <br><input id="dimanche" name ="dimanche" type="checkbox" value="true"/>Dimanche
     
 </div>
    

	<div class = "formulaire_radio">
  <input type="radio" id = "btn_radio1" name="btn_radio1" value="true" checked > Toutes les semaines<br>
  <input type="radio" id = "btn_radio2" name="btn_radio2" value="true" > Toutes les deux semaines<br>
   <input type="radio" id = "btn_radio3" name="btn_radio3" value="true" > Tous les mois
   </div>

    
    <div class = "formulaire_radio" style="border-top:none;" >
    <span class = "heure_config">Veuillez pr�ciser l'heure (hh:mm)</span>
   			 
    <SELECT id ="heure1" name="heure1" size="1">
    <OPTION>1
    <OPTION>2
    <OPTION>3
    <OPTION>4
    <OPTION>5
    <OPTION>6
    <OPTION>7
    <OPTION>8
    <OPTION>9
    <OPTION>11
    <OPTION>12
    <OPTION>13
    <OPTION>14
    <OPTION>15
    <OPTION>16
    <OPTION>17
    <OPTION>18
    <OPTION>19
    <OPTION>20
    <OPTION>21
    <OPTION>22
    <OPTION>23
    <OPTION>00
    
    </SELECT>
   
    <SELECT id="minute1" name="minute1" size="1">
    <OPTION>00
    <OPTION>10
    <OPTION>20
    <OPTION>30
    <OPTION>40
    <OPTION>50
    </SELECT>
   
    </div>
    
    <div class = "formulaire_radio" style="border-top:none;" >
    	Choisir une dur�e d'arrosage (s)
    	<SELECT id="minute1" name="minute1" size="1"style="margin-left:10px;">
	    <OPTION>03
	    <OPTION>05
	    <OPTION>08
	    <OPTION>10
	    <OPTION>12
	    <OPTION>15
	    <OPTION>20
	    <OPTION>25
	    <OPTION>30
	    <OPTION>35
	    <OPTION>40
	    <OPTION>50
	    <OPTION>60
	    <OPTION>90
	    <OPTION>120
	    <OPTION>150
	    <OPTION>180
	    </SELECT>
    </div>

   <a id="form1lnk" href="javascript:void(0)">Configurer</a>
			
	
		<script>
		$("#form1lnk").click(function(){
			alert("Votre configuration a �t� prise en compte");
		});

		</script>
			
			
			
			</div>
			
		</div></div></div></div>
    
