<?php

class Connection{

	static public function connect(){

		$link = new PDO("mysql:host=localhost;dbname=pos","magazin","Bz_qe446");

	$link->exec("set names utf8");

	return $link;
	
	}

}