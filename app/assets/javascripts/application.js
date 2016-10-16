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
    if(!localStorage.hash){
      localStorage.hash = 0;
    };


    if(localStorage.hash == 0){
      jQuery.post( "/ajax-hash", function( data ) {
        
        localStorage.hash = data;
        console.log(localStorage.hash);
      });
    }else{
      console.log(localStorage.hash);
    };
    var templocal = [];

    

    jQuery(".add-cart").on("click", function() {
      var clickbtn = jQuery(this);
      var food_id = clickbtn.parent().find("a").attr("href").split("/")[4];
      if(clickbtn.text() === "Pick"){
      	clickbtn.text("Remove");
        templocal.push(food_id);
        console.log(templocal);
      }else{
        clickbtn.text("Pick");
        var i = templocal.indexOf(food_id);
        templocal.splice(i, 1);
        console.log(templocal);
      };
    });

    // When user checkout
    jQuery("a#checkout").on("click", function(){
      event.preventDefault();
      // Post data
      var url = jQuery(this).attr('href');
      var ser = "";
      templocal.forEach(function(i){ser = ser + '/' + i});
      var data = {'food': ser, 'hash': localStorage.hash};
      console.log(data);
      jQuery.ajax({
        type: "POST",
        url: url,
        data: data,
        // success: success,
        // dataType: dataType
      });
    });
});
