/* Minify took 0.0069949626922607 */


var UserLoginDropdown={dropdown:false,loginAjaxForm:false,init:function(){this.dropdown=$("#UserLoginDropdown");$("#AccountNavigation .ajaxLogin").click($.proxy(function(ev){ev.preventDefault();ev.stopPropagation();if(!this.dropdown.hasClass('show')){this.show();}
else{this.hide();}},this)).closest('li').hover(function(e){e.preventDefault();UserLoginDropdown.hoverHandle=setTimeout(function(){UserLoginDropdown.show();},300);},function(e){clearTimeout(UserLoginDropdown.hoverHandle);});HoverMenuGlobal.menus.push(UserLoginDropdown);},show:function(){if(!this.dropdown.hasClass('show')){this.dropdown.addClass('show');if(!this.loginAjaxForm){this.loginAjaxForm=new UserLoginAjaxForm(this.dropdown);UserLoginFacebook.init();}
this.loginAjaxForm.inputs['username'].focus();$('body').unbind('.loginDropdown').bind('click.loginDropdown',$.proxy(this.outsideClickHandler,this));}},hide:function(){this.dropdown.removeClass('show');$('body').unbind('.loginDropdown');},outsideClickHandler:function(e){var target=$(e.target);if(!target.closest('#AccountNavigation').exists()){this.hide();}},hideNav:function(){UserLoginDropdown.hide();}};$(function(){UserLoginDropdown.init();});