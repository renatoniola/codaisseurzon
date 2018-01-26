function addProduct(e){
  //e.preventDefault();
  //console.log(e.currentTarget['value']);
  const prodId = e.currentTarget['value'];

  $.ajax({
    type: "POST",
    url: `/cart/${prodId}`,'cart/'+prodId
    data: JSON.stringify({ }),
    contentType: "application/json",
    dataType: "json"

  }).done(function(product){

  }).fail(function(err){

  })
}

$(document).ready(function() {

  $(".add-product").bind('click', addProduct);

});
