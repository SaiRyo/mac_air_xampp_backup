<body>

<?php

	// DBサーバの障害対策。エラートラップという
	try
	{
		// 前の画面から受け取った入力データを変数にコピー
		$staff_name = $_POST['name'];
		$staff_pass = $_POST['pass'];

		// 入力データにサニタイジング
		$staff_name = htmlspecialchars($staff_name);
		$staff_pass = htmlspecialchars($staff_pass);

		//DBに接続
		$dsn      = 'mysql:dbname=shop;host=localhost';
		/*
		$user     = 'root';
		$password = '1qaz"WSX';
		*/
		$user     = 'shoper';
		$password = 'shoper';

		$dbh      = new PDO($dsn, $user, $password);
		$dbh->query('SET NAMES utf8');

		// sql文を使ってレコードを追加してます
		$sql    = 'insert into mst_staff(name, password) value (?,?)';
		$stmt   = $dbh->prepare($sql);
		$data[] = $staff_name;
		$data[] = $staff_pass;
		$stmt->execute($data);

		// db接続を切断
		$dbh = null;

		print $staff_name;
		print 'さんを追加しました。<br />';


	}
	// DBサーバーに障害が発生した時
	catch (exception $e) {
		print 'ただいま障害により大変ご迷惑をお掛けしております。';
		// 強制終了
		exit();
	}

?>

<a href = "staff_list.php">戻る</a>


</body>