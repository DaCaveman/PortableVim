/* Minify took 0.0040481090545654 */


var WikiaScriptLoader=window.wsl=(function(){var userAgent=navigator.userAgent.toLowerCase(),useDOMInjection=(userAgent.indexOf('opera')!=-1)||(userAgent.indexOf('firefox/3.')!=-1),headNode=document.getElementsByTagName('HEAD')[0],NodeFactories={js:function(url,options){var script=document.createElement('script');script.src=url;script.type="text/javascript";script.async=false;script.onLoadDone=false;script.onLoadCallback=options.callback||null;script.onload=function(){if(!this.onLoadDone&&typeof this.onLoadCallback=='function'){this.onLoadCallback();this.onLoadDone=true;}};script.onreadystatechange=function(){if(!this.onloadDone&&this.readyState=='loaded'&&typeof this.onLoadCallback=='function'){this.onLoadCallback();this.onLoadDone=true;}};return script;},css:function(url,options){var link=document.createElement('link');link.href=url;link.rel='stylesheet';link.type='text/css';link.media=options.media||'';return link;}},counter=0;function isArray(obj){return obj instanceof Array;}
function injectNode(type,urls,options){options=options||{};if(!isArray(urls))
urls=[urls];var node,url,finalCallback,opts;if(options.callback){finalCallback=function(){counter--;if(counter==0){options.callback();}}}
if(type=='js'){opts={callback:finalCallback};counter+=urls.length;}else
opts=options;for(var x=0,y=urls.length;x<y;x++){headNode.appendChild(NodeFactories[type](urls[x],opts));}}
function writeScript(urls,callback){var output='';if(!isArray(urls))
urls=[urls];for(var x=0,y=urls.length;x<y;x++){output+='<scr'+'ipt src="'+urls[x]+'" type="text/javascript"></scr'+'ipt>';}
document.write(output);if(typeof callback=='function'){var handler=function(){callback();};if(window.addEventListener)
window.addEventListener('load',handler,false);else if(window.attachEvent)
window.attachEvent('onload',handler);}}
return{loadScript:function(urls,callback){if(useDOMInjection)
injectNode('js',urls,{callback:callback});else
writeScript(urls,callback);},loadCSS:function(urls,media){injectNode('css',urls,{media:media});}};})();;