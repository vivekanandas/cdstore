<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/ico/favicon.png">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- add theme styles for this template -->
<link id="pagestyle" rel="stylesheet" type="text/css" href="assets/css/skin-1.css">

<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- css3 animation effect for this template -->
<link href="assets/css/animate.min.css" rel="stylesheet">

<!-- styles needed by carousel slider -->
<link href="assets/css/owl.carousel.css" rel="stylesheet">
<link href="assets/css/owl.theme.css" rel="stylesheet">

<!-- styles needed by checkRadio -->
<link href="assets/css/ion.checkRadio.css" rel="stylesheet">
<link href="assets/css/ion.checkRadio.cloudy.css" rel="stylesheet">

<!-- styles needed by mCustomScrollbar -->
<link href="assets/css/jquery.mCustomScrollbar.css" rel="stylesheet">

<!-- Just for debugging purposes. -->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

<!-- include pace script for automatic web page progress bar  -->
<!-- Placed at the end of the document so the pages load faster --> 
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="assets/js/idangerous.swiper-2.1.min.js"></script> 
<script src="//cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.2.0/bootbox.min.js"></script>
<script>
  var mySwiper = new Swiper('.swiper-container',{
	pagination: '.box-pagination',
 keyboardControl: true,
    paginationClickable: true,
    slidesPerView: 'auto',
	autoResize:true,
	resizeReInit:true,
  })
  
  	 $('.prevControl').on('click', function(e){
    e.preventDefault()
    mySwiper.swipePrev()
  })
  $('.nextControl').on('click', function(e){
    e.preventDefault()
    mySwiper.swipeNext()
  });
  $(function(){
  	alert('ready');
 	$.ajax({
			async :	true, 
			url   : 'rest/CategoryService',
			type  : 'get',
			data  : {},
			dataType : 'json'
	}).done(function(data){
		if(data){
			$.each(data, function() {
				$.each(this,function(key,value){
					if(key == 'name'){
						$('#categoryUl').append('<li><a href="#">'+value+'</a></li>');	
					}
				});
				
			});
			
		}
		else{
			alert('unknown error');
		}
	});
 });
  </script> 

<!-- include jqueryCycle plugin --> 
<script src="assets/js/jquery.cycle2.min.js"></script> 

<!-- include easing plugin --> 
<script src="assets/js/jquery.easing.1.3.js"></script> 

<!-- include  parallax plugin --> 
<script type="text/javascript"  src="assets/js/jquery.parallax-1.1.js"></script> 

<!-- optionally include helper plugins --> 
<script type="text/javascript"  src="assets/js/helper-plugins/jquery.mousewheel.min.js"></script> 

<!-- include mCustomScrollbar plugin //Custom Scrollbar  --> 

<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.js"></script> 

<!-- include checkRadio plugin //Custom check & Radio  --> 
<script type="text/javascript" src="assets/js/ion-checkRadio/ion.checkRadio.min.js"></script> 

<!-- include grid.js // for equal Div height  --> 
<script src="assets/js/grids.js"></script> 

<!-- include carousel slider plugin  --> 
<script src="assets/js/owl.carousel.min.js"></script> 

<!-- jQuery minimalect // custom select   --> 
<script src="assets/js/jquery.minimalect.min.js"></script> 

<!-- include touchspin.js // touch friendly input spinner component   --> 
<script src="assets/js/bootstrap.touchspin.js"></script> 

<!-- include custom script for site  --> 
<script src="assets/js/script.js"></script> 

<!-- include custom script for only homepage  --> 
<script src="assets/js/home.js"></script>

<script>
    paceOptions = {
      elements: true
    };
</script>
<script src="assets/js/pace.min.js"></script>
    <script type="text/javascript">
function swapStyleSheet(sheet){
document.getElementById('pagestyle').setAttribute('href', sheet);
}
</script>    <style>

	.themeControll {
		background:#2d3e50;
		height: auto;
		width:100px;
		position:fixed;
		left:0;
		padding:20px;
		top:20%;
		z-index:999999;
		-webkit-transform: translateX(0);
		-moz-transform: translateX(0);
		-o-transform: translateX(0);
		-ms-transform: translateX(0);
		transform: translateX(0);
		opacity: 1;
		-ms-filter: none;
		filter: none;
		-webkit-transition: opacity .5s linear, -webkit-transform .7s cubic-bezier(.56, .48, 0, .99);
		-moz-transition: opacity .5s linear, -moz-transform .7s cubic-bezier(.56, .48, 0, .99);
		-o-transition: opacity .5s linear, -o-transform .7s cubic-bezier(.56, .48, 0, .99);
		-ms-transition: opacity .5s linear, -ms-transform .7s cubic-bezier(.56, .48, 0, .99);
		transition: opacity .5s linear, transform .7s cubic-bezier(.56, .48, 0, .99);
	}
	
	.themeControll.active {
		display: block;
		-webkit-transform: translateX(-100px);
		-moz-transform: translateX(-100px);
		-o-transform: translateX(-100px);
		-ms-transform: translateX(-1020px);
		transform: translateX(-100px);
		-webkit-transition: opacity .5s linear, -webkit-transform .7s cubic-bezier(.56, .48, 0, .99);
		-moz-transition: opacity .5s linear, -moz-transform .7s cubic-bezier(.56, .48, 0, .99);
		-o-transition: opacity .5s linear, -o-transform .7s cubic-bezier(.56, .48, 0, .99);
		-ms-transition: opacity .5s linear, -ms-transform .7s cubic-bezier(.56, .48, 0, .99);
		transition: opacity .5s linear, transform .7s cubic-bezier(.56, .48, 0, .99);
	
	}
	
	.themeControll a {
    border-radius: 3px;
    clear: both;
    display: block;
    height: 25px;
    margin-bottom: 4px;
    width: 50px;
	}
	
	.tbtn {
    background:#2D3E50;
    color: #FFFFFF !important;
    font-size: 30px;
    height: auto;
    padding: 10px;
    position: absolute;
    right: -40px;
    top: 0;
    width: 40px;
	cursor:pointer;
   }
   
   	@media (max-width: 780px) {
    .themeControll {
        display:none;
    }
}
	
	</style>