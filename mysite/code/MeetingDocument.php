<?php
class MeetingDocument extends File {

	private static $db = array(
	);

	private static $has_one = array(
		'Meeting' => 'MeetingPage'
	);

}
