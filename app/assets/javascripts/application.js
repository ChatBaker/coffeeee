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
//= require jquery3
//= require rails-ujs
//= require_tree .
//= require turbolinks
//= require bootstrap-sprockets
//= require highcharts/highcharts
//= require highcharts/highcharts-more
//= require highcharts/highstock


function click_cb(){
    //チェックカウント用変数
    var check_count = 0;

    // 箇所チェック数カウント
    $(".input_item ul li").each(function(){
        var parent_checkbox = $(this).children("input[type='checkbox']");

        if(parent_checkbox.prop('checked')){
            check_count = check_count+1;
        }
    });

    // 0個のとき（チェックがすべて外れたとき）
    if(check_count == 0){
        $(".input_item ul li").each(function(){
            $(this).find(".locked").removeClass("locked");
        });

    // 3個以上の時（チェック可能上限数）
    }else if(check_count > 2){
        $(".input_item ul li").each(function(){
            // チェックされていないチェックボックスをロックする
            if(!$(this).children("input[type='checkbox']").prop('checked')){
                $(this).children("input[type='checkbox']").prop('disabled',true);
                $(this).addClass("locked");
            }
        });
    }else{
        $(".input_item ul li").each(function(){
            // チェックされていないチェックボックスを選択可能にする
            if(!$(this).children("input[type='checkbox']").prop('checked')){
                $(this).children("input[type='checkbox']").prop('disabled',false);
                $(this).removeClass("locked");
            }
        });
    }

    return false;
}
