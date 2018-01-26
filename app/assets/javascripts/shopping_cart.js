function addProduct(e){
  //e.preventDefault();
  //console.log(e.currentTarget['value']);
  const prodId = e.currentTarget['value'];

  $.ajax({
    type: "POST",
    url: `/api/shopping_cart/`,
    data: JSON.stringify({product: prodId}),
    contentType: "application/json",
    dataType: "json"

  }).done(function(product){
    console.log(product)
  }).fail(function(err){

  })
}

$(document).ready(function() {

  $(".add-product").bind('click', addProduct);

});
