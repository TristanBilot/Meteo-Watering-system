<script type="text/javascript">

$(document).ready(function(){

	  
	 var line1;
	  
	  $.ajax({
			dataType: "json",
			type : 'POST',
			url: 'CapteursBDDServlet',
			data : { typeCapteur: "CAPTEUR_TEMPERATURE"},
			async :false,
			 success: function (data) {
				 line1 = data;
			 }
		});
	  
 	 // line1=[["2008-08-12 4:00PM",4], ['2008-09-12 4:00PM',6.5], ['2008-10-12 4:00PM',5.7], ['2008-11-12 4:00PM',9], ['2008-12-12 4:00PM',8.2]];
 	  var plot1 = $.jqplot('chart1', [line1], {
 	    title:'Diagramme en fonction du temps',
 	    axes:{
 	        xaxis:{
 	            renderer:$.jqplot.DateAxisRenderer
 	        }
 	    },
 	    series:[{lineWidth:4, markerOptions:{style:'square'}}]
 	  });
   
 	  
	  
 	 var line2;
	  
	  $.ajax({
			dataType: "json",
			type : 'POST',
			url: 'CapteursBDDServlet',
			data : { typeCapteur: "CAPTEUR_HUMIDITE"},
			async :false,
			 success: function (data) {
				 line2 = data;
			 }
		});
	  
	 // line1=[["2008-08-12 4:00PM",4], ['2008-09-12 4:00PM',6.5], ['2008-10-12 4:00PM',5.7], ['2008-11-12 4:00PM',9], ['2008-12-12 4:00PM',8.2]];
	  var plot2 = $.jqplot('chart2', [line2], {
	    title:'Diagramme en fonction du temps',
	    axes:{
	        xaxis:{
	            renderer:$.jqplot.DateAxisRenderer
	        }
	    },
	    series:[{lineWidth:4, markerOptions:{style:'square'}}]
	  });	  
 
	});


</script>
<div class = "margeSimple">
		
		
		<div class ="titre_droite"><marquee>Votre système en temps réel</marquee></div>
		<div class = "paragraphe_droit">
			
			<div class="phrase_zoom"style="display:none;">Le zoom est activé a 110%</div>
				<div class = "div_temperature">
					<div class = "titre_div_temperature"><span style="margin-top:10px;font-size: 19px;text-align: center;display: block;letter-spacing: 1px;">TEMPERATURE</span></div>
					<div id="chart1"></div>
				</div>
				
				<div class = "div_humidite">
					<div class = "titre_div_humidite"><span style="margin-top:10px;font-size: 19px;text-align: center;display: block;letter-spacing: 1px;">HUMIDITE</span></div>
					<div id="chart2"></div>
				
				</div>
			
		<div class = "dessous_div_gauche"> <div class = "actuellement">Etat: température</div>
											<div class = "a"><a href = "javascript:void(0)" class = "lien" title = "Votre jardin n'a pas besoin d'être arrosé actuellement."> Votre jardin ne risque rien.</a></div>
											<div class = "b"> Votre jardin est légèrement exposé</div>
											<div class = "c"> Votre jardin est exposé au soleil</div>
											<div class = "d"> Votre jardin est en danger</div>
		</div>
		
		
		<div class = "dessous_div_droite">	 <div class = "actuellement">Etat: humidité</div>
											<div class = "b"> Ne nécessite pas d'être arrosé.</div>
											<div class = "b1"> <a href = "#span_leger" class = "lien1" title = "Cliquez ici pour ouvrir la page d'activation de l'arrosage léger."> Nécessite un arrosage léger.</a> </div>
											<div class = "c">  Nécessite un arrosage complet.</div>
											
		 </div>
		
		
			
		<div class = "indice">Attention, chaque plante nécessite un arrosage différent, nous avons choisi ce site
		afin que vous puissiez voir par vous-même le besoin en eau de vos plantes.
		</div>
		<div class = "phrase_indice"> Nous vous conseillons en règle générale d'arroser vos plantes lorque le taux d'humiditéest inférieur à 50%, sachant que le taux idéal pour 
		la croissance de la plupart des plantes est >50% et <80%.</div>
			</div>
	
	
	<div class = "activation">Arrosage léger ou complet</div>
	
	
	<ul class = "ulist">
		<li>Arrosage léger : active l'eau pendant 6 secondes.</li>
		<li>Arrosage complet : active l'eau pendant 15 secondes.</li>
	</ul>
	
	<script>
	$(document).ready(function() {
	$(".bouton_complet_complet").click(function(){
		$(".actuellement").find("#span_leger").html("Arrosage léger: activé !");
	});
	$(".bouton_complet_leger").click(function(){
		$(".actuellement").find("#span_complet").html("Arrosage complet: activé !");
	});
	$("#btn_arrosage_leger").click(function(){
		$("#actuellement_leger").find("#span_leger").html("Arrosage activé !");
	});
	$("#btn_arrosage_complet").click(function(){
		$("#actuellement_complet").find("#span_complet").html("Arrosage activé !");
	});
	});
	</script>
	
						<div class = "arrosage_complet">	 <div id="actuellement_leger" class = "actuellement"><span id = "span_leger">Arrosage léger</span></div>
			<a class = "lien_btn_complet" >
			<input id="btn_arrosage_leger" type="submit" name="lien1" value="Activer" class="bouton_complet">
			</a>
		 
		 	
		 </div>
	
	
						<div class = "arrosage_complet2">	 <div id="actuellement_complet" class = "actuellement"><span id = "span_complet">Arrosage complet</span></div>
			<a class = "lien_btn_complet" >
			<input id="btn_arrosage_complet" type="submit" name="lien1" value="Activer" class="bouton_complet">
			</a>
		 
		 	
		 </div>
	
	<script>
	$(document).ready(function() {
		
	$(".bouton_complet").click(function(){
		$(".actuellement").find("#span_query").html("Arrosage: activé !");
	});
	$(".bouton_complet_desactivation").click(function(){
		$(".actuellement").find("#span_query").html("Arrosage: désactivé !");
	});
	
});
	
	</script>
	
	
	<div class = "activation2">Arrosage à volonté</div>
	
	<div class = "nul"> Les deux boutons ci-dessous vous permette d'activer et d'arreter l'arrosage pendant le temps que vous voulez.
	<br>Pour des raisons de sécurité, l'arrosage s'éteindra automatiquement au bout de 10 minutes.</div>
	
				<div class = "arrosage_complet3">	 <div class = "actuellement"><span id = "span_query">Arrosage à volonté</span></div>
			<a class = "lien_btn_complet" >
			<input type="submit" name="lien1" value="Démarrer" class="bouton_complet">
			</a>
		 
		 		
			<a class = "lien_btn_complet" >
			<input type="submit" name="lien1" value="Eteindre" class="bouton_complet_desactivation">
			</a>
		 
		 	
		 </div>
		
		 
		 		
	
	</div>