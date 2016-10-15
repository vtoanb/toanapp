// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require tether
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
jQuery.noConflict()

jQuery(document).ready(function() {
  // if (!localStorage.cart_container){
  // 	localStorage.cart_container = [];
  // }
  // else {
  //   jQuery(".add-cart").on("click", function() {
  //     var clickbtn = jQuery(this);
  //     var food_id = clickbtn.parent().find("a").attr("href").split("/")[4];
  //     if(clickbtn.text() === "Add to Cart"){
  //     	clickbtn.text("Remove from Cart");
  //     	// id as a key
  //       var index = localStorage.cart_container.indexOf(food_id);
  //       if (index === -1){
  //     	  localStorage.cart_container.push(food_id);
  //       }
  //     }else{
  //       clickbtn.text("Add to Cart");
  //       var index = localStorage["dict"].indexOf(food_id);
  //       if ( index > -1 ){
  //         localStorage.cart_container.splice(index, 1);
  //       };
  //     };
  //     console.log(localStorage.cart_container);
  //   });
  // // if user click to checkout we can collected foods
  // };
})
