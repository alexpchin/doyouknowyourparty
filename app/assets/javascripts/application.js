// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var PromisesApp = PromisesApp || {};

PromisesApp.sortable = function() {
  $('ul').sortable({
    connectWith: ".sortable"
  }).disableSelection();
}

PromisesApp.displayPromises = function(promises) {
  var $ul   = $('ul');
  var count = 0;
  $.each(promises, function(i, promise){
    $($ul[count]).append("<li>"+promise.content+"</li>");
    count++
    if(count>=5){count=0};
  });
}

PromisesApp.getPromises = function() {
  $.ajax({
    url: "/promises.json",
    type: "GET",
    data: "json"
  }).done(function(data){
    PromisesApp.displayPromises(data);
  });
}

PromisesApp.initialize = function() {
  PromisesApp.sortable();
  PromisesApp.getPromises();
}

$(PromisesApp.initialize);