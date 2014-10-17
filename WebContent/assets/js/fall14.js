/**
 * created by : Indhrapriya Shanmugam
 * 
 */
var cd = {};
cd.retrive = function(categoryName){
	//alert('cd.retrive');
	$('#productslider').html("");
	$.ajax({
		async :	true, 
		url   : 'rest/ProductService/'+categoryName,
		type  : 'get',
		data  : {},
		dataType : 'json'
}).done(function(data){
	if(data){
		$.each(data, function() {
			var title, artist, year, price;
			//alert(this.title);
			var content = '<div class="item"><div class="product"><div class="image"><a href="product-details.html"><img src="images/product/'+this.title.replace(/\s/g, '')+'.jpg" alt="img" class="img-responsive"></a></div><div class="description"><h4><a href="product-details.html">'+this.title+'</a></h4><p>'+this.artist+'</p><span class="size">'+this.year+'</span> </div><div class="price"><span>'+this.price+'</span> </div><div class="action-control"><a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"></i> Add to cart </span> </a> </div></div></div>';
			console.log(content);
			$('#productslider').append(content);
	});
		 $("#productslider").owlCarousel({
		        navigation: true,
		        items: 4,
		        itemsTablet: [768, 2]
		    });


		    // BRAND  carousel
		    var owl = $(".brand-carousel");

		    owl.owlCarousel({
		        //navigation : true, // Show next and prev buttons
		        navigation: false,
		        pagination: false,
		        items: 8,
		        itemsTablet: [768, 4],
		        itemsMobile: [400, 2]


		    });

		    // Custom Navigation Events
		    $("#nextBrand").click(function() {
		        owl.trigger('owl.next');
		    })
		    $("#prevBrand").click(function() {
		        owl.trigger('owl.prev');
		    })

		
	}
	else{
		alert('unknown error');
	}
});
}