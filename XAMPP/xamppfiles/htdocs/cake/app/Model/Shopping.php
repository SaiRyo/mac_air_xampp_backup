<?php
//------------------------------------------------------------------------------
//--
//--    FILE NAME : Shopping.php
//--
//--    $Id: Shopping.php 87 2013-10-19 09:12:51Z komaki $
//--
//------------------------------------------------------------------------------
//--   @COPYRIGHT 2013 BY NEOJAPAN  CORPORATION ALL RIGHTS RESERVED
//------------------------------------------------------------------------------
/**
 * カテゴリーモデルクラス
 *
 * @copyright
 * @link
 * @package    app.Model
 * @since
 * @license
 */

//------------------------------------------------------------------------------
// App::uses
//------------------------------------------------------------------------------
/**
 * 利用クラス宣言
 *
 */
App::uses('AppModel', 'Model');

//------------------------------------------------------------------------------
//--    クラス： Shopping
//--    Class ： Shopping
//------------------------------------------------------------------------------
/**
 * カテゴリーモデルクラス
 *
 *
 * @package app.Model
 */
class Shopping extends AppModel {

	//--------------------------------------------------------------------------
	// プロパティ
	//--------------------------------------------------------------------------
	/**
	 * $useTable
	 *
	 * @var string
	 */
	public $useTable = 'categories';

	/**
	 * $primaryKey
	 *
	 * @var string
	 */
	public $primaryKey = 'Shopping_id';

	/**
	 * $sequence
	 *
	 * @var string
	 */
	public $sequence = 'public.seq_categories';

	//--------------------------------------------------------------------------
	// バリデーション
	//--------------------------------------------------------------------------
	/**
	 * $validate
	 *
	 * @var array
	 */
	public $validate = array(
		//カテゴリ名
		'Shopping_name' => array(
			// 必須
			'Shopping_name.notEmpty' => array(
					'rule' =>  array('notEmpty')
				,	'required' => true
				,	'allowEmpty' => false
			)
			// 文字長
			,'Shopping_name.betweenJP' => array(
				'rule' => array('betweenJP', 1, 128)
			)

        ));


	//--------------------------------------------------------------------------
	// メソッド
	//--------------------------------------------------------------------------
	//--------------------------------------------------------------------------
	//--    関数名： コンストラクタ
	//--    Method： __construct()
	//--------------------------------------------------------------------------
	/**
	 * __construct
	 *
	 * @access public
	 * @return bool
	 */
	public function __construct($id = false, $table = null, $ds = null){
		parent::__construct($id, $table, $ds);
		$errorMessages = array(
				'Shopping_name.notEmpty' => __('カテゴリー名を入力してください。',true)
				,'Shopping_name.betweenJP' => __('カテゴリー名は1文字以上128文字以下で入力してください。',true)
		);
		$this->setErrorMessageI18n($errorMessages);
	}



}