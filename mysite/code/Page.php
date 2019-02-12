<?php

use SilverStripe\CMS\Model\SiteTree;
class Page extends SiteTree {



	private static $db = array(
	);

	private static $has_one = array(
	);
	public function FeaturedInitiative(){

		$initHolder = InitiativeHolder::get()->First();
		if($initHolder->FeaturedInitiativeID){
			$initiative = InitiativePage::get()->filter(array(
				'ID' => $initHolder->FeaturedInitiativeID
			))->First();
			return $initiative;
		}else{
			return false;
		}
	}
}
