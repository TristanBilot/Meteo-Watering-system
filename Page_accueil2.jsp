<%@ include file="importScript.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>Page 1</title>
        <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
        <script src="css/jquery.cssPageTransitions.js"></script>
        <link rel="stylesheet" href="css/example.css" media="all">
    </head>
    <body style="margin: 0; padding: 0; color: white; height: 100%; min-height: 100vh">
        <article style="background-color: #7799bb; width: 100%; height: 100%; min-height: 100vh">
        
        
        		<div class="sous_menu">
       <ul id="menu">
        
                <li>
                        <a href="/WebProject/Page_accueil" class='next'>Accueil</a>
                </li>
                
                <li>
                        <a id ="capteurLnk" href="#">Capteurs</a>
                        <ul>
                                <li><a href="/WebProject/Capteur_temperature">Température</a></li>
                                <li><a href="/WebProject/Capteur_humidite">Taux d'humidité</a></li>
                                <li><a href="/WebProject/Graphiques">Graphiques</a></li>
                        </ul>
                </li>
                
                <li>
                        <a href="#">Arrosage</a>
                        <ul>
                                
                                    <li>  <a href="/WebProject/Configuration">Paramétrer</a></li>
                                    <li>  <a href="/WebProject/Configuration_temps">Règler le temps</a></li>
                                	<li>  <a href="/WebProject/System">Temps réel</a></li>
                        </ul>
                </li>
                
                <li>
                        <a href="#">Site</a>
                        <ul>
                                <li><a href="#">Description</a></li>
                                <li><a href="#">Nous contacter</a></li>
                                <li><a href="#">Equipe</a></li>
                        </ul>
                </li>
                
        </ul>		
		</div> 
        
        
            <h1 style="font-size: 6vw; margin: 0; padding: 4rem; font-size: 10vw;">Page 1</h1>
            <a style='color: #224477; padding: 4rem; font-size: 5vw;' title='Page 2' href='./page2.html' class='next'>Next Article</a>
        </article>
        <!-- Add transition handlers -->
        <script>
            var registerCssTransitions = function() {
                //add transition to .prev
                $('.prev').cssPageTransitions( {
                    elementsOut: 'article',
                    classOut: 'is-moveout-left',
                    classIn: 'is-movein-left',
                    animationEnded: function() {
                        $('.is-moveout-left').remove();
                        registerCssTransitions();
                    }
                });

                //add transitions to .next
                $('.next').cssPageTransitions( {
                    elementsOut: 'article',
                    classOut: 'is-moveout-right',
                    classIn: 'is-movein-right',
                    animationEnded: function() {
                        $('.is-moveout-right').remove();
                        registerCssTransitions();
                    }
                });
            };

            $( document ).ready(function() {
                registerCssTransitions();
            });
        </script>
    </body>
</html>