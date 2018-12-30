
    		<div class = "margeSimple">
    		
    		
    		
   
		<div class="titre_droite">
			<marquee>Simplifiez vous la vie !</marquee>
		</div>
		<div class="paragraphe_droit">
			<div class="petit_titre_droite">Qu'est ce que e-Watering ?</div>
			e-Watering est un système d'arrosage contrôlable et configurable à
			distance via l'application e-Watering ou sur le site.
			<div class="petit_titre_droite">Quels sont les avantages ?</div>
			Grâce à notre système, vous n'aurez plus besoin de vous occupez de
			votre espace vert car le système le fera tout seul !<br> Les ressources
			utilisées (eau, électricité) seront gratuites et illimitiées grâce au
			panneau photovoltaïque et au réservoir d'eau de pluie.<br> Nous recommandons
			notre système à des utilisateurs possédant un espace vert de moyenne
			à petite taille.<br>
			<div class="phrase_milieu">Nous envisageons de produire notre
				système à une plus grande échelle et sous différents formats.</div>
			<div class="petit_titre_droite">Comment décider des heures
				d'arrosage ?</div>
			Vous pouvez configurer votre système comme vous le souhaitez grâce au
			site ou à l'application, il existe plusieurs façons de le déclencher: vous pouvez le déclencher quand vous le désirez via un
			bouton d'activation, le programmer à certains jours et à l'heure désirée <br>Un
			système d'arrosage automatique est aussi disponible, il se déclenche
			en fonction du taux d'humidité de votre terre.<br>
			<a id="config_link" href="javascript:void(0)">
			Vous pouvez configurer votre système en cliquant ici.</a> 
			<div class="petit_titre_droite" id="title_system_mobile" >Comment un tel système
				fonctionne-t-il ?</div>
			<img src="diag_bloc.png" alt="bloc" class="photo_bloc">
			<div class="petit_titre_droite">Quelques conseils d'arrosage</div>

<script>
    		$("#config_link").click(function(){
    			
    			$.get( "/WebProject/Configuration", 
    					function( data ) {

    					$( "#mainContainer").fadeOut( "slow", function() {
    						$("#mainContainer").html(data);
    						$( "#mainContainer").fadeIn( "slow", function() {
    						 });
    					});
    				});
    		});
</script>
			<div class="humidite_bloc">
				<div class="titre_humidite_bloc">Humidité de la terre</div>
				<div class="centrage">
					<img src="Goutte_d'eau.png" alt="" class="img_goutte">
					<p>
						La majorité des plantes se développent mieux lorsque le taux
						d'humidité relative est supérieur à <b>50 %</b>. Si plusieurs
						plantes tolèrent des taux plus faibles, seules celles des régions
						arides supportent des taux inférieurs à <b>25 %</b>.<br>
						<br> Il faut veiller à ce que la base du pot ne baigne pas
						dans l'eau, au risque de faire pourrir les racines. L'eau, en
						s'évaporant, crée ainsi un <b>microclimat humide</b> autour de la
						plante.
					</p>
				</div>
			</div>
			<div class="temperature_bloc">
				<div class="titre_humidite_bloc">Température de l'air</div>
				<div class="centrage">
					<img src="tempe.png" alt="" class="img_temp">

					<p>
						Les plants en terre ont moins besoin d'eau supplémentaire que les
						plants en intérieur ou en pots. Quand la plante a eu le temps de
						faire ses racines, elle n'aura besoin d'eau en plus qu'au plus
						chaud de l'été (ou si elle est spécialement grande). <br>
						<br>
						<b>Surveillez vos plantes</b>, si les feuilles <b>s'affaissent</b>
						et se <b>recroquevillent</b> c'est le signe qu'elle a besoin de
						plus d'eau. Quand la plante n'a pas assez d'eau elle ne peut pas
						se protéger du soleil et ses feuilles sèchent, rendant plus
						difficile l'hydratation de celles-ci avec des <b>conséquences
							désastreuses</b>. Laisser vos plantes à sec de temps à temps a une
						action <b>bénéfique</b> sur le développement des racines et
						favoriser l'assimilation par les racines, mais la limite entre un
						peu sec et trop sec est fine, faites donc attention.
					</p>
				</div>
			</div>


			<div class="arrosage_bloc">
				<div class="titre_humidite_bloc">L'arrosage</div>
				<div class="centrage">
					<img src="watering.png" alt="" class="img_arrosage">
					<p>

						La plupart des plantes ont besoin d'être arrosées lorsque le
						premier centimètre de sol est sec au toucher. Les plantes adaptées
						aux régions arides, telles que les cactus et les plantes grasses,
						supportent <b>plus de sécheresse.</b> <br>
						<br>Néanmoins, il est préférable d'arroser plus fréquemment
						l'été lorsque les conditions de croissance sont optimales. <b>Évitez
							les arrosages superficiels.</b><br> Arrosez toute
						la surface du sol jusqu'à ce que le surplus d'eau s'écoule par les
						trous de drainage, et enlevez l'eau excédentaire quelques minutes
						plus tard.

					</p>
				</div>
			</div>

		</div>

	</div>
    		
    		

    