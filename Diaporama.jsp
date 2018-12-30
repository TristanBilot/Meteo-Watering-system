
<head>

  <meta charset="utf-8">
  <link rel="stylesheet" href="css/responsiveslides.css">
  <link rel="stylesheet" href="css/demo.css">
  <link rel="stylesheet" href="css/Diapo.css" />
  <script src="responsiveslides.min.js"></script>
  <script>
    // You can also use "$(window).load(function() {"
    $(function () {

      // Slideshow 1
      $("#slider1").responsiveSlides({
        maxwidth: 800,
        speed: 800
      });

      // Slideshow 2
      $("#slider2").responsiveSlides({
        auto: false,
        pager: true,
        speed: 300,
        maxwidth: 540
      });

      // Slideshow 3
      $("#slider3").responsiveSlides({
        manualControls: '#slider3-pager',
        maxwidth: 540
      });

      // Slideshow 4
      $("#slider4").responsiveSlides({
        auto: false,
        pager: false,
        nav: true,
        speed: 500,
        namespace: "callbacks",
        before: function () {
          $('.events').append("<li>--> Envoie requete HTTP.</li>");
        },
        after: function () {
          $('.events').append("<li><-- Reception requete HTTP.</li>");
        }
      });

    });
  </script>

</head>
<body>
  <div id="wrapper">
    <h1 style="margin-top:40px;margin-bottom:10px;border-bottom:1px solid rgb(0,74,90);color:rgb(0,74,90);padding-bottom:5px;" >Diaporama</h1>


    <!-- Slideshow 4 -->
    <div class="callbacks_container">
      <ul class="rslides" id="slider4">
        <li>
          <img src="Bac.JPG" alt="" class="pi">
          <p class="caption">Le contexte</p>
        </li>
        <li>
          <img src="cultur.JPG" alt="" class="pi" >
          <p class="caption">La terre de culture</p>
        </li>
        <li>
          <img src="2.jpg" alt="" class="pi">
          <p class="caption">Le panneau photovoltaique</p>
        </li>
        <li>
        <img src="3.jpg" alt="" class="pi">
          <p class="caption">The third caption</p>
        </li>
      </ul>
    </div>


    <ul class="events">
      <li><h3>Console</h3></li>
    </ul>

</div>

   