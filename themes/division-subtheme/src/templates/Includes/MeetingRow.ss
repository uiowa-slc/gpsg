						<tr class="$EvenOdd">
						<td><a href="$Link">$Date.Format("F d, Y") $Time &rarr;</a>
						</td>
						<td class="documents">
							<% if $Agenda %>
								<a href="$Agenda.URL" class="btn">Agenda <img src="$Agenda.Icon" alt="Agenda Icon" class="show-for-large-up" /></a>
							<% end_if %>
							<% if $MeetingNotes %>
								<a href="$MeetingNotes.URL" class="btn">Meeting Minutes <img src="$MeetingNotes.Icon" class="show-for-large-up"  alt="Meeting Notes Icons"/></a> 
							<% end_if %>
							<% if $OtherDocuments %>
								<% loop $OtherDocuments %>
									<a href="$URL" class="btn" target="_blank">Document $Pos<img src="$Icon" class="show-for-large-up"  alt ="Document Icon" /></a>
								<% end_loop %>
							<% end_if %>
			
						</td>
					</tr>