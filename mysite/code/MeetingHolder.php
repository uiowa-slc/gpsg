<?php

use SilverStripe\ORM\ArrayList;

class MeetingHolder extends Page {

	private static $db = array();
	private static $has_one = array();
	private static $allowed_children = array('MeetingPage','MeetingHolder');

	public function Meetings(){
		$children = $this->Children();

		if($children){
			return $children->sort("Date",  "DESC");
		}

	}

	public function UpcomingMeetings(){
		$meetings = $this->Children();
		$upcomingMeetings = new ArrayList();
		foreach($meetings as $meeting){
			$meetingDate = $meeting->obj("Date");
			if(isset($meetingDate) && $meetingDate->InFuture()){
				$upcomingMeetings->push($meeting);
			}
		}

		if($upcomingMeetings->First()){
			return $upcomingMeetings;
		}
	}

	public function PastMeetings(){
		$meetings = $this->Children();
		$pastMeetings = new ArrayList();
		foreach($meetings as $meeting){
			$meetingDate = $meeting->obj("Date");
			if(isset($meetingDate) && $meetingDate->InPast()){
				$pastMeetings->push($meeting);
			}
		}

		if($pastMeetings->First()){
			return $pastMeetings->sort("Date DESC");
		}
	}

}
