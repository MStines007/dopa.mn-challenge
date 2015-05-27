/*jshint forin:true, noarg:true, noempty:true, eqeqeq:true, bitwise:true, strict:true, undef:true, unused:true, curly:true, browser:true, devel:true, jquery:true, indent:4, maxerr:50, laxcomma:true, indent:false, unused: false */

;(function($, doc, win){
  "use strict";

  function init() {
    //Assign vars here
  }

  function listen() {
    //Listeners here

    $('#body')
      .on('click', '#x-btn-submit', getPlaces);
  }

  function getPlaces(e){
    e.preventDefault();
    e.stopImmediatePropagation();

    var $btn = $(this),
        location = $('#location').val(),
        limit = "25";

    location = location.replace(" ","");

    var url = "/places?postal_code="+location;

    if (limit.length) {
      url += "&limit="+limit;
    }

    $.get(url, function(result){

      $("#results").empty();
      $("#x-btn-submit").html("Roll Again!");
      $("#results").append("<tr><th>Name</th><th>Category</th><th>Cross Streets</th><th>Url</th><th>Phone #</th></tr>");
      for (var num = 0; num < result.length; num+=1){
        $("#results").append("<tr><th>"+result[num].name+"</th>"+"<th>"+result[num].category+"</th>"+"<th>"+result[num].cross_streets+"</th>"+"<th>"+result[num].url+"</th>"+"<th>"+result[num].phone_num+"</th></tr>");
      }

      //empty the #results table
      //append the headers Name, Category, Cross Streets and Url
      //loop through the results and output them in the table
      //use jQuery or vanilla JS
    });

  }


  $(function(){
    init();
    listen();
  });
})(jQuery, document, window);
