<?php

class MeetingHolderController extends PageController {

    private static $allowed_actions = array ( "PaginatedPages" );

    public function PaginatedPages() {
        $paginatedList = new PaginatedList(
            MeetingPage::get(),
            $this->request
        );
        return $paginatedList;
    }

    public function init() {
        parent::init();
    }
}
