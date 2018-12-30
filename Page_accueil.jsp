
    		<div class = "margeSimple">
    		
    		
    		
   
		<div class="titre_droite">
			<marquee>Simplifiez vous la vie !</marquee>
		</div>
		<div class="paragraphe_droit">
			<div class="petit_titre_droite">Qu'est ce que e-Watering ?</div>
			e-Watering est un syst�me d'arrosage contr�lable et configurable �
			distance via l'application e-Watering ou sur le site.
			<div class="petit_titre_droite">Quels sont les avantages ?</div>
			Gr�ce � notre syst�me, vous n'aurez plus besoin de vous occupez de
			votre espace vert car le syst�me le fera tout seul !<br> Les ressources
			utilis�es (eau, �lectricit�) seront gratuites et illimiti�es gr�ce au
			panneau photovolta�que et au r�servoir d'eau de pluie.<br> Nous recommandons
			notre syst�me � des utilisateurs poss�dant un espace vert de moyenne
			� petite taille.<br>
			<div class="phrase_milieu">Nous envisageons de produire notre
				syst�me � une plus grande �chelle et sous diff�rents formats.</div>
			<div class="petit_titre_droite">Comment d�cider des heures
				d'arrosage ?</div>
			Vous pouvez configurer votre syst�me comme vous le souhaitez gr�ce au
			site ou � l'application, il existe plusieurs fa�ons de le d�clencher: vous pouvez le d�clencher quand vous le d�sirez via un
			bouton d'activation, le programmer � certains jours et � l'heure d�sir�e <br>Un
			syst�me d'arrosage automatique est aussi disponible, il se d�clenche
			en fonction du taux d'humidit� de votre terre.<br>
			<a id="config_link" href="javascript:void(0)">
			Vous pouvez configurer votre syst�me en cliquant ici.</a> 
			<div class="petit_titre_droite" id="title_system_mobile" >Comment un tel syst�me
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
				<div class="titre_humidite_bloc">Humidit� de la terre</div>
				<div class="centrage">
					<img src="Goutte_d'eau.png" alt="" class="img_goutte">
					<p>
						La majorit� des plantes se d�veloppent mieux lorsque le taux
						d'humidit� relative est sup�rieur � <b>50 %</b>. Si plusieurs
						plantes tol�rent des taux plus faibles, seules celles des r�gions
						arides supportent des taux inf�rieurs � <b>25 %</b>.<br>
						<br> Il faut veiller � ce que la base du pot ne baigne pas
						dans l'eau, au risque de faire pourrir les racines. L'eau, en
						s'�vaporant, cr�e ainsi un <b>microclimat humide</b> autour de la
						plante.
					</p>
				</div>
			</div>
			<div class="temperature_bloc">
				<div class="titre_humidite_bloc">Temp�rature de l'air</div>
				<div class="centrage">
					<img src="tempe.png" alt="" class="img_temp">

					<p>
						Les plants en terre ont moins besoin d'eau suppl�mentaire que les
						plants en int�rieur ou en pots. Quand la plante a eu le temps de
						faire ses racines, elle n'aura besoin d'eau en plus qu'au plus
						chaud de l'�t� (ou si elle est sp�cialement grande). <br>
						<br>
						<b>Surveillez vos plantes</b>, si les feuilles <b>s'affaissent</b>
						et se <b>recroquevillent</b> c'est le signe qu'elle a besoin de
						plus d'eau. Quand la plante n'a pas assez d'eau elle ne peut pas
						se prot�ger du soleil et ses feuilles s�chent, rendant plus
						difficile l'hydratation de celles-ci avec des <b>cons�quences
							d�sastreuses</b>. Laisser vos plantes � sec de temps � temps a une
						action <b>b�n�fique</b> sur le d�veloppement des racines et
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

						La plupart des plantes ont besoin d'�tre arros�es lorsque le
						premier centim�tre de sol est sec au toucher. Les plantes adapt�es
						aux r�gions arides, telles que les cactus et les plantes grasses,
						supportent <b>plus de s�cheresse.</b> <br>
						<br>N�anmoins, il est pr�f�rable d'arroser plus fr�quemment
						l'�t� lorsque les conditions de croissance sont optimales. <b>�vitez
							les arrosages superficiels.</b><br> Arrosez toute
						la surface du sol jusqu'� ce que le surplus d'eau s'�coule par les
						trous de drainage, et enlevez l'eau exc�dentaire quelques minutes
						plus tard.

					</p>
				</div>
			</div>

		</div>

	</div>
    		
    		

    