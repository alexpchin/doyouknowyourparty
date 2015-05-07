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

PromisesApp.labelInputs = function(){
  var $inputs = $('input');
  $.each($inputs, function(i, input){
    var $ul = $(input).parents('ul');
    $(input).attr('name', 'promises['+$ul.attr("id")+']['+i+']');
  })
}

PromisesApp.displayScores = function(scores) {
  var $titles = $('h2');
  $.each($titles, function(i, title) {
    $(title).text(scores[i].party + " " + scores[i].score + "/" + scores[i].total)
  });
}

PromisesApp.checkPromises = function() {
  $('form').on('submit', function(){
    event.preventDefault();
    PromisesApp.labelInputs();
    var data = $(this).serialize();

    $.ajax({
      url: "/promises/check",
      type: "post",
      dataType: "json",
      data: data,
    }).done(function(data){
      PromisesApp.displayScores(data);
    })
  });
}

PromisesApp.displayPromises = function(promises) {
  var $ul   = $('ul');
  var count = 0;
  // Same order as in view
  var parties = ["labour", "conservatives", "liberal_democrats", "green"];
  $.each(promises, function(i, promise){
    $($ul[count]).append("<li><label>"+promise.content+"</label><input type='hidden' name='promises' value='"+promise.id+"'></li>");
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
  PromisesApp.checkPromises();
}

$(function(){
  if ($('ul').length > 0) {
    PromisesApp.initialize();
  }
});