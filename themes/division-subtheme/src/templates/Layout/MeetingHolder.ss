$Header
<main class="main-content__container" id="main-content__container">

	<!-- Background Image Feature -->
	<% if $BackgroundImage %>
		<% include FeaturedImage %>
	<% end_if %>
	$Breadcrumbs

<% if not $BackgroundImage %>
	<div class="column row">
		<div class="main-content__header">
			<h1>$Title</h1>
		</div>
	</div>
<% end_if %>

$BlockArea(BeforeContent)

<div class="row">

	<article role="main" class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding<% end_if %> <% if $Children || $Menu(2) || $SidebarBlocks ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
		$BlockArea(BeforeContentConstrained)

			$Content

				<h2>Upcoming meetings</h2>

				<% if $UpcomingMeetings %>
				<table>

				<tr>
					<th>Meeting date</th>
					<th>Location</th>
				</tr>
				    <tbody>
						<% loop $UpcomingMeetings %>
							<tr class="$EvenOdd">
								<td><a href="$Link">$Date.Nice $Time</a>
								</td>
								<td>
									$Location
								</td>
							</tr>
						<% end_loop %>
					</tbody>
			   </table>
			   <% else %>
			   	<p>No upcoming meetings currently listed.</p>
			   <% end_if %>
			<h2>Past meetings</h2>
				<table>

				<tr>
					<th>Meeting date</th>
					<th>Available documents</th>
					<th>Notes</th>
				</tr>
				    <tbody>
					  <% loop PastMeetings %>
						<tr class="$EvenOdd">
							<td><a href="$Link">$Date.Nice $Time</a>
							</td>
							<td class="documents">
								<% if $Agenda %>
									<a href="$Agenda.URL" class="btn">Agenda</a>
								<% end_if %>
								<% if $MeetingNotes %>
									<a href="$MeetingNotes.URL" class="btn">Meeting Minutes</a>
								<% end_if %>
								<% if $OtherDocuments %>
									<% loop $OtherDocuments %>
										<a href="$URL" class="btn" target="_blank">Document $Pos</a>
									<% end_loop %>
								<% end_if %>
							</td>
							<td>
								<a href="$Link">$Notes.LimitCharacters(50) Continue reading...</a>
							</td>
						</tr>
					<% end_loop %>
					</tbody>
			   </table>

	</article>
	<aside class="sidebar dp-sticky">
		<% include MeetingSideNav %>
		<% if $SideBarView %>
			$SideBarView
		<% end_if %>
		$BlockArea(Sidebar)
	</aside>
</div>
$BlockArea(AfterContent)

</main>

