
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Database</title>
    <!-- Bootstrap -->
	<link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="../js/index.js" rel="stylesheet">
    <link href="../bootstrap/css/jquery.datetimepicker.css" rel="stylesheet"> 
    <link href="../bootstrap/css/ jquery.datetimepicker.min.css" rel="stylesheet"> 
  
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<style>
#d {
    width: 80px;
    height: 90px;
   
    position: absolute;
   
      right:85%;
      animation-fill-mode: forwards;
      animation-delay: 1s;
    -webkit-animation-duration: 2s;
    -webkit-animation-iteration-count: 1s;
    -webkit-animation-direction: normal;
   
    -moz-animation-name: chgt-couleur; 
    -moz-animation-duration: 3s;
    -moz-animation-iteration-count:1s;
    -moz-animation-direction: normal;
    animation-name: chgt-couleur;
    animation-duration: 3s;
    animation-iteration-count: 1s;
    animation-direction: normal; 
}
#arret {
  animation-play-state: paused;
}
@keyframes masuperanimation {
    0% {
        transform: translateX(0px);
    }

    50% {
        transform: translateX(650px);
    }

    100% {
        transform: translateX(650px) rotate(30deg);
    }
}


@keyframes masuperanimation {
    0% {
        transform: translateX(0px);
    }

    50% {
        transform: translateX(650px);
    }

    100% {
        transform: translateX(650px) rotate(30deg);
    }
}
@keyframes masuperanimation12 {
    0% {
        transform: translateX(0px);
    }

    50% {
        transform: translateX(0px);
    }

    100% {
        transform: translateX(0px) rotate(30deg);
    }
}
@keyframes masuperanimation1 {
    0% {
        transform: translateX(0px);
    }

    50% {
        transform: translateX(0px);
    }

    100% {
        transform: translateX(0px) rotate(-30deg);
    }
}

#d
{  
    animation: masuperanimation 2s; /* On utilise "ma super animation" définie plus tôt */
    animation-fill-mode: forwards;
animation-delay: 1s;
}
#d1
{  
    animation: masuperanimation1 2s; /* On utilise "ma super animation" définie plus tôt */
    animation-fill-mode: forwards;
animation-delay: 1s;
}

#d12
{  
    animation: masuperanimation12 2s; /* On utilise "ma super animation" définie plus tôt */
    animation-fill-mode: forwards;
animation-delay: 1s;
}
#m {
    width: 80px;
    height: 90px;
     left:100%;
    position: relative;
    animation-fill-mode: forwards;
     animation-delay: 1s;
    /* Chrome, Safari, Opera */
    -webkit-animation-duration: 2s;
    -webkit-animation-iteration-count: 1s;
    -webkit-animation-direction: reverse;

   -moz-animation-name: chgt-couleur;  Mozilla 
    -moz-animation-duration: 3s;
    -moz-animation-iteration-count: 1s;
    -moz-animation-direction: reverse;
    animation-name: chgt-couleur;
    animation-duration: 3s;
    animation-iteration-count: 1s;
    animation-direction: reverse;
}
#p{
  position: absolute;
 right:0%;
 text-align:center;

}



/*Pour Chrome, Safari et Opéra*/
@-webkit-keyframes chgt-couleur {
    0% {background-color: white; top: 0px; left: 0px}
    25% {background-color: white; top: 0px; left: 300px}
   
}

/*Pour Mozilla*/
@moz-keyframes chgt-couleur{
    0% {background-color: white; top: 0px; left: 0px}
    25% {background-color:white ; top: 0px; left: 300px}
    
}

/*Syntaxe standard*/
@keyframes chgt-couleur {
    0% {background-color: white; top: 0px; left: 0px}
    25% {background-color: white; top: 0px; left: 300px}
    </style>
    <style>
#i {
   -webkit-animation-name: spinner; 
  -webkit-animation-timing-function: linear; 
  -webkit-animation-iteration-count: infinite; 
  -webkit-animation-duration: 12s;
  -webkit-animation-delay: 1s; /* Chrome, Safari, Opera */
  animation-delay: 1s;
  animation-name: spinner; 
  animation-timing-function: linear; 
  animation-iteration-count: infinite; 
  animation-duration: 12s; 
  -webkit-transform-style: preserve-3d; 
  -moz-transform-style: preserve-3d; 
  -ms-transform-style: preserve-3d; 
  transform-style: preserve-3d;
}


/* WebKit and Opera browsers */ 
@-webkit-keyframes spinner { 
  from 
  { 
    -webkit-transform: rotateY(0deg); 
    top: 0px; left: 300px
  } 
  to { 
    -webkit-transform: rotateY(-360deg); 
  } 
} 
/* all other browsers */ 
@keyframes spinner { 
   from { 
    -moz-transform: rotateY(0deg); 
    -ms-transform: rotateY(0deg); 
    transform: rotateY(0deg); 
   } 
   to 
   { 
    -moz-transform: rotateY(-360deg); 
    -ms-transform: rotateY(-360deg); 
    transform: rotateY(-360deg); 

   } 
}
</style>
  </head>
  <body>
   
     <div class="container-fluid">
     <div class="row-fluid">


      <div class="col-lg-1 col-sm-12 text-center">
     
      <img src="image/fleche.gif"  width="50" height="40" alt=""id="d12" />
      <img src="image/fleche.gif"  width="50" height="40" alt="" />
      <img src="image/fleche.gif"  width="50" height="40" alt=""id="d1" /><br><br><br><br><br><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" /><br><br><br><br><br><br><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d1"/><br>
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" />
      <img src="image/flechenormal.jpg"  width="60" height="30" alt="" id="d12"/>
           
      </div>


      <div class="col-lg-2 col-sm-12 text-center">
            <img src="image/pc.jpg" class="img-circle img-rounded" width="150" height="150" alt="" /><br><br><br>
            <img src="image/pc.jpg" class="img-circle img-rounded" width="180" height="150" alt="" /><br><br><br><br>
            <img src="image/pc.jpg" class="img-circle img-rounded" width="150" height="150" alt=""  />
      </div>



      <div class="col-lg-3 col-sm-12 text-center ">

      <img src="image/arrow.jpg"  width="50" height="70" alt="" id="d"/><br><br><br>
      <div id="arret"></div>


      <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m" /><br><br><br>
       
      <img src="image/arrow.jpg"  width="50" height="70" alt="" id="d"/><br><br><br>
      <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m"/><br><br><br>
      <img src="image/arrow.jpg"  width="50" height="70" alt="" id="d"/><br><br><br>
      <img src="image/arrow1.jpg"  width="50" height="70" alt="" id="m"/><br><br><br>
      </div>
  
       <div class="col-lg-6 col-sm-13 text-center"><br><br><br><br><br>
      <img src="image/disque.png"    width="250" height="350" alt="" id="p"/>
    </div>
      
</div></div>

 
  </body>
</html>