/**
 * created by : Indhrapriya Shanmugam
 * 
 */
var cd = {};
cd.retrive = function(categoryName){
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
			alert(data.title);
			var content = '<div class="item"><div class="product">'+
			+'<div class="image"><a href="product-details.html">'+
			+'<img src="images/product/'+title.replace(/\s/g, '')+'.jpg" alt="img" class="img-responsive"></a></div>'+
			+'<div class="description">'+
			+'<h4><a href="product-details.html">'+title+'</a></h4>'+
			+'<p>'+artist+'</p>'+
			+'<span class="size">'+year+'</span> </div><div class="price">'+
			+'<span>'+price+'</span> </div><div class="action-control">'+
			+'<a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart">'+
			+'</i> Add to cart </span> </a> </div></div></div>';
			$('#productslider').append(content);
	});
		
	}
	else{
		alert('unknown error');
	}
});
}