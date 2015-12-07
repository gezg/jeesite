/*!
 * Copyright &copy; 2012-2013 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */

// 添加收藏
function addFavorite(sURL, sTitle){
	if(!sTitle){sTitle = document.title;}
    try{
    	window.external.addFavorite(sURL, sTitle);
    }catch (e){
        try{
        	window.sidebar.addPanel(sTitle, sURL, "");
        }catch (e){
        	alert("加入收藏失败，请使用Ctrl+D进行添加");
        }
    }
}
//设为首页
function SetHome(obj, vrl) {
    try {
        obj.style.behavior = 'url(#default#homepage)';
        obj.setHomePage(vrl);
    } catch(e) {
        if (window.netscape) {
            try {
                netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
            } catch (e) {
                alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
            }
            var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
            prefs.setCharPref('browser.startup.homepage', vrl);
        }
    }
}
// 自动滚动：setInterval("autoScroll('.jcarousellite')",3000);
function autoScroll(obj){
	var height = $(obj).find("ul:first li:first").height()+3;
    $(obj).find("ul:first").animate({marginTop:"-" + height + "px"},'slow',function(){
    		$(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
    });
}