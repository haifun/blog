"use strict";!function(r){App.pager&&{getBaseUrl:function(){var t="";return App.isHome?t=App.pager.dirIndex+"/":App.isCate?t=App.pager.dirCate+"/":App.isTag&&(t=App.pager.dirTag+"/"),t=App.root+App.pager.dir+"/"+t},getOffset:function(){var t=r("#sidebar"),e="none"===t.css("float"),a=r("#footer").outerHeight(!0)+50;return e&&(a+=t.outerHeight(!0)),a},init:function(){var e=this.getBaseUrl(),t=this.getOffset(),a=r("#spinnerPager"),p=r("#posts");r(window).scrollPager({heightOffset:t,url:function(t){return e+t.p+"/"},showLoading:function(){a.addClass("active")},hideLoading:function(){a.removeClass("active")},afterLoad:function(t,e){p.append(e)},pageData:{p:1,ps:App.pager.size,total:App.pager.total},ajaxOpts:{cache:!1,type:"GET",contentType:!1,dataType:"html",stringifyData:!1}})}}.init()}(jQuery);