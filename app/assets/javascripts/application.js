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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs
//= require popper
//= require bootstrap-sprockets


// ローディング画面
jQuery(function() {
	var loader = $('.loader-wrap');

	//ページの読み込みが完了したらアニメーションを非表示
	$(window).on('load',function() {
		loader.fadeOut();
	});

	//ページの読み込みが完了してなくても3秒後にアニメーションを非表示にする
	setTimeout(function() {
		loader.fadeOut();
	},3000);
});

jQuery(function() {
  var appear = false;
  var pagetop = $('#page_top');
  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {  //100pxスクロールしたら
      if (appear == false) {
        appear = true;
        pagetop.stop().animate({
          'bottom': '50px' //下から50pxの位置に
        }, 300); //0.3秒かけて現れる
      }
    } else {
      if (appear) {
        appear = false;
        pagetop.stop().animate({
          'bottom': '-50px' //下から-50pxの位置に
        }, 300); //0.3秒かけて隠れる
      }
    }
  });
  pagetop.click(function () {
    $('body, html').animate({ scrollTop: 0 }, 500); //0.5秒かけてトップへ戻る
    return false;
  });
});

$(function(){
  $('.js-modal-open').on('click',function(){
      $('.js-modal').fadeIn();
      return false;
  });
  $('.js-modal-close').on('click',function(){
      $('.js-modal').fadeOut();
      return false;
  });
});

jQuery(function($){  
  $('.content').masonry({
    itemSelector: '.card',
    columnWidth: 180, 
    isFitWidth: true  //親要素の幅に合わせてカラム数を自動調整
  });  
});

$(function(){
  $('.tab-content>div').hide();
  $('.tab-content>div').first().slideDown();
    $('.tab-buttons span').click(function(){
      var thisclass=$(this).attr('class');
      $('#lamp').removeClass().addClass('#lamp').addClass(thisclass);
      $('.tab-content>div').each(function(){
        if($(this).hasClass(thisclass)){
          $(this).fadeIn(800);
        }
        else{
          $(this).hide();
        }
      });
    });
});
