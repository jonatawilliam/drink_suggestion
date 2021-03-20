// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require_tree .

function ready(event) {
  $("input[type=radio][name=searchRadio]").change(function () {
    if (this.value === "simple") {
      $(".simple-form").show();
      $(".drink-recommendation-form").hide();
    } else if (this.value === "drink-recommendation") {
      $(".simple-form").hide();
      $(".drink-recommendation-form").show();
    }
  });
  $("label[id=btnSimpleSearch]").click(function () {
    $(".simple-form").toggle();
    $(".drink-recommendation-form").hide();
    $(".simpleSearch").is(':checked');
    $("input[type=radio][id=simpleSearch]").click();
  });
  $("label[id=btnRecommendSearch]").click(function () {
    $(".drink-recommendation-form").toggle();
    $(".simple-form").hide();
    $(".recommendSearch").is(':checked');
    $("input[type=radio][id=recommendSearch]").click();
  });
}

$(document).on("turbolinks:load", ready);
