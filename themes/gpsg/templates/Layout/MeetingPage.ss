<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
	    $Breadcrumbs
		<h1>$Title</h1>
		<h2>Meeting Date</h2> <p>$Date.NiceUS <% if $Time %>at $Time<% end_if %></p>
		<h2>Location</h2><p>$Location</p>

		<h2>Meeting Documents</h2>
		<p>

		<% if $Agenda || $MeetingNotes || $OtherDocuments %>
		<% if Agenda %>
			<a href="$Agenda.URL" class="btn">Agenda <img class="show-for-large-up"  src="$Agenda.Icon" /></a>
		<% end_if %>
		<% if MeetingNotes %>
			<a href="$MeetingNotes.URL" class="btn">Meeting Minutes <img src="$MeetingNotes.Icon" class="show-for-large-up" alt ="Image representing a Downloadable Document" /></a>
		<% end_if %>
		<% if $OtherDocuments %>
			<% loop $OtherDocuments %>
				<a href="$URL" class="btn" target="_blank">Document $Pos<img src="$Icon" class="show-for-large-up" alt ="Document Icon" /></a>
			<% end_loop %>
		<% end_if %>	
		<% else %>
			There are no documents listed for this meeting.
		<% end_if %>
	</p>
	
		<% if Notes %>
			<h3>Additional Notes:</h3>
			$Notes
		<% end_if %>
	    </section>
	    <section class="sec-content hide-print">

	    	<% include SideNav %>
	    </section>
	</div>
</div>
<% include TopicsAndNews %>