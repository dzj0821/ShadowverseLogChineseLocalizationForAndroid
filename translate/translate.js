javascript:(function(){
    var translate = {
		"ログイン画面" : "登录页面",
		"メールアドレス" : "电子邮箱",
		"パスワード" : "密码",
		"マナリアウィッチ": "学院法"
	};
	var html = document.getElementsByTagName("body")[0].innerHTML;
	for(var item in translate){
		while(html.indexOf(item) != -1){
			html = html.replace(item, translate[item]);
		}
	}
	document.getElementsByTagName("body")[0].innerHTML = html;
})()