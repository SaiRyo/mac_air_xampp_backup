<?php

//------------------------------------------------------------------------------
//--
//--    FILE NAME : .php
//--
//--    $Id: .php 94 2013-10-19 09:46:52Z sawai $
//--
//------------------------------------------------------------------------------
//--   @COPYRIGHT 2013 BY NEOJAPAN  CORPORATION ALL RIGHTS RESERVED
//------------------------------------------------------------------------------
/**
 * コントローラー
 *
 * @copyright
 * @link
 * @package       app.Controller
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
App::uses('AppController', 'Controller');

//------------------------------------------------------------------------------
//--    クラス： ShoppingsController
//--    Class ： ShoppingsController
//------------------------------------------------------------------------------
/**
 * カテゴリーマスタコントローラー
 *
 *
 *
 * @package       app.Controller
 */

class ShoppingsController extends AppController {

	//--------------------------------------------------------------------------
	// プロパティ
	//--------------------------------------------------------------------------
	/**
	 * $uses
	 *
	 * @var array
	 */

public $helpers = array('Html', 'Form');

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
	public
	 function index() {

		// 初期化
		$iRet = 0;

/*

		// POSTだった場合
		if($_SERVER["REQUEST_METHOD"] == "POST"){

			
			//$iRet = $this->staff_add_check();
			//$iRet = 

			// もし入力値が正しく入力されていなかった場合
			if ($iRet !== 0) {
				// 再入力画面へリダイレクト

				$this->redirect('/Shoppings/index');			
				//$this->render('staff_add_check');


			}


		}

*/


		// indexを表示
		$this->render('index');

	}


	//--------------------------------------------------------------------------
	//--    関数名： 登録処理
	//--    Method： staff_add()
	//--------------------------------------------------------------------------
	/**
	 * staff_add
	 *
	 * 登録処理
	 *
	 * @access public
	 * @return void
	 */

	public function staff_add() {

		//POSTだった場合
		if($_SERVER["REQUEST_METHOD"] == "POST"){
			$this->staff_add_check();
			//$this->render('staff_add_check');

		}

		else{
			$this->render('staff_add');
		}

	}

/*

	public function staff_add_check{

		$this->render('staff_add_check');
	}
*/

	//--------------------------------------------------------------------------
	//--    関数名： 登録処理
	//--    Method： staff_add()
	//--------------------------------------------------------------------------
	/**
	 * staff_add
	 *
	 * 登録処理
	 *
	 * @access public
	 * @return void
	 */
	public function staff_adding(){
		$this->render('staff_add');


	}



}