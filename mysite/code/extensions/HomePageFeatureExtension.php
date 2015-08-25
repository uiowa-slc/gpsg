<?php

class HomePageFeatureExtension extends DataExtension {
	public function FeaturedInitiative(){
		$initHolder = InitiativeHolder::get()->First();
		return $initHolder->FeaturedInitiative();
	}

}