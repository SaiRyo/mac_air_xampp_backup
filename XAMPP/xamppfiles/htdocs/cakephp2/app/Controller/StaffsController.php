<?php



//----------------------------------------------------------------------
// App::uses
//----------------------------------------------------------------------
/**
 * 利用クラス宣言
 *
 */
App::uses('AppController', 'Controller');

/**
 * スタッフマスタコントローラー
 *
 *
 * @package		app.Controller
 */
class StaffsController extends AppController {

	//----------------------------------------------------------------------
	// プロパティ
	//----------------------------------------------------------------------
	/**
	 * $uses
	 *
	 * @var array
	 */
	public $uses = array('Staff');

	/**
	 * $paginate
	 *
	 * paginateの設定
	 *
	 * @var array
	 */
	 //public $uses = array('Staff');
	public $paginate = array(
				//'limit' => NUM_PAGE_LIMIT
				'limit' => 10
				,'order' => array(
							'User.user_id' => 'asc'
							)
				,'paramType' => 'querystring'
			);

	//--------------------------------------------------------------------------
	// メソッド
	//--------------------------------------------------------------------------
	//--------------------------------------------------------------------------
	//--    関数名： 一覧画面
	//--    Method： index()
	//--------------------------------------------------------------------------
	/**
	 * index
	 * 
	 * 一覧画面
	 * 
	 * @access public
	 * @return void
	 */
	public function index() {
	/*		
		$this->set('sampleValue', 'サンプルテキスト');
		$this->set('APP', APP);
		$this->set('DS', DS);
	*/

		//初期化
		$arData = array();
		//$options['order'] = array('Staff.sort_order' => 'asc');

		try{
			//スタッフ情報取得
			//$arData = $this->Staff->find('all',$options);
			//$arData = $this->Staff->find('all');
			//$arData = $this->Staff->find('all');
			//print_r($this->Staff->find('all'), true);
			debug($arData);

		}
		catch(PDOException $e){
			ComLog::error($e->getMessage());
			ComLog::error($e->queryString);
			throw $e;

		}
/*
		//登録されていない場合
		if(empty($arData) === true){
			//メッセージをviewに渡す
            $this->set('sErrMessage', __('データが存在しません'));
		}
		else{
			//Viewセット
			$this->set('arStaffs', $arData);
		}
*/
		//indexを表示
		$this->render('index');


	}





}
