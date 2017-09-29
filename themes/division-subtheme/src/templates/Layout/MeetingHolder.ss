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
					<th>Available documents</th>
				</tr>
				    <tbody>	
						<% loop $UpcomingMeetings %>
							<% include MeetingRow %>
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
				</tr>
				    <tbody>	
					  <% loop PastMeetings %>
						<% include MeetingRow %>
					<% end_loop %>
					</tbody>
			   </table>
			
	</article>
	<aside class="sidebar dp-sticky">
		<% include SideNav %>
		<% if $SideBarView %>
			$SideBarView
		<% end_if %>
		$BlockArea(Sidebar)
	</aside>
</div>
$BlockArea(AfterContent)

</main>

