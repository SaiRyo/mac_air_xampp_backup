<?php

// 合言葉を確認する
session_start();
// 自分のパソコンとサーバーだけの間で毎回合言葉を変更
// セッションIDが盗まれないようにする(セッションハイジャック対策のため)
session_regenerate_id(true);

// もしログインOKのの証拠がかい場合
if(isset($_SESSION['login']) == false) {

	print 'ログインされていません。<br />';
	print '<a href = "../staff_login/staff_login.html">ログイン画面へ</a>';
	// exitで強制終了して、これ以降の画面は見せない
	exit();
}
else {
	print $_SESSION['staff_name'];
	print 'さんログイン中<br />';
	print '<br />';
}


?>


<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<title>ろくまる農園</title>
</head>
<body>

ショップ管理トップメニュー<br />
<br />
<a href = "../staff/staff_list.php">スタッフ管理</a><br />
<br />
<a href = "../product/pro_list.php">商品管理</a><br />


</body>
</html>