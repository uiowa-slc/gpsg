<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">

	<h1>$Title</h1>
			$Content
			
				<h2>Upcoming meetings</h2>

				<% if $UpcomingMeetings %>
				<table class="meetings">
			
				<tr>
					<th>Meeting date</th>
					<th>Available documents</th>
				</tr>
				    <tbody class="table-page table-start">	
						<% loop $UpcomingMeetings %>
							<% include MeetingRow %>
						<% end_loop %>
					</tbody>
			   </table>
			   <% else %>
			   	<p>No upcoming meetings currently listed.</p>
			   <% end_if %>
			<h2>Past meetings</h2>
				<table class="meetings">
			
				<tr>
					<th>Meeting date</th>
					<th>Available documents</th>
				</tr>
				    <tbody class="table-page table-start">	
					  <% loop PastMeetings %>
						<% include MeetingRow %>
					<% end_loop %>
					</tbody>
			   </table>
			
	    </section>
	    <section class="sec-content hide-print">
			<aside>
				<div class="mod">
					$SideBarView
				</div>
				<% if getSidebarItems %>
					<% loop getSidebarItems %>
						<% include SidebarItem %>
					<% end_loop %>
				<% end_if %>
			</aside>
	    </section>
	</div>
</div>
<% include TopicsAndNews %>
