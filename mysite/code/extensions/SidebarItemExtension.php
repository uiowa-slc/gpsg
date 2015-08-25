<?php

class SidebarItemExtension extends DataExtension {
	public function FeaturedInitiative(){
		$initHolder = InitiativeHolder::get()->First();
		return $initHolder->FeaturedInitiative();
	}

}