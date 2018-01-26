function addProduct(e){
  //e.preventDefault();
  //console.log(e.currentTarget['value']);
  const prodId = e.currentTarget['value'];

  $.ajax({
    type: "POST",
    url: `/cart/`,
    data: JSON.stringify({produtct: prodId}),
    contentType: "application/json",
    dataType: "json"

  }).done(function(product){

  }).fail(function(err){

  })
}

$(document).ready(function() {

  $(".add-product").bind('click', addProduct);

});
