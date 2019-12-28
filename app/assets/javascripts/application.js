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
//= require turbolinks
//= require_tree .

$(document).on("turbolinks:load", function(){


  $(function(){



    $('.portfolios-box').slick({
      dots: true,
      // 下のドット表示
      arrows: true,
      
      autoplay: true,
      // 自動再生。trueで自動再生される。
      speed: 400,
      // 自動再生や左右の矢印でスライドするスピード
      autoplaySpeed: 3000,
      // 自動再生で切り替えをする時間
      accessibility: true,
      // アクセシビリティ。左右ボタンで画像の切り替えをできるかどうか
  });





  });

});