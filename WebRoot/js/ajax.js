function createajax(){
	var ajax = null;
	try{
		ajax = new ActiveXObject("Microsoft.xmlhttp");
	}catch(e1){
		try {
           ajax = new XMLHttpRequest();
		} catch (e2) {
              alter("你的浏览器不支持ajax,请更换浏览器")
      }
	}
	return ajax;
}