<?php
class InitiativePage extends Page {

	private static $db = array(
		"HideTextTitle" => "Boolean",
	);

	private static $has_one = array(

		"MainImage" => "Image",

	);

	//public static $allowed_children = array ("BranchPersonPage");

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('BackgroundImage');
		//$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		$fields->addFieldToTab('Root.Main', new UploadField('MainImage', 'Initiative cover/banner image'), "Content");

		return $fields;
	}

}
class InitiativePage_Controller extends Page_Controller {

	public static $allowed_actions = array(
	);

	public function init() {
		parent::init();
	}
}