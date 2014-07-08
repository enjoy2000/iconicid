<?php

require_once "Mage/Customer/Block/Account/Navigation.php";

class Eezy_Disable_Block_Customer_Account_Navigation extends Mage_Customer_Block_Account_Navigation {

	public function removeLink($name) {
		unset($this -> _links[$name]);
	}

}
