  		<section class="topics hide-print">
            <div class="container">
                <div class="colgroup">
                    <div class="col-1-2 mod">

                    	<% include FbPageBox %>

                    </div>
                    <div class="col-1-4 mod mod-news">
                    	<h3 class="mod-title">Initiatives</h3>
				        <ul class="unstyled">
				        	<% loop Page(initiatives) %>
				        		<% loop $Children %>
                              		<li> <a href="$Link"> $Title </a> </li>
								<% end_loop %>
								<hr />
								<li><a href="$Link"> View All &rarr;</a></li>
				        	<% end_loop %>
				        	
				        </ul>

                    </div>
                    <div class="col-1-4 mod">
                    	<h3 class="mod-title">Meetings</h3>
				        <ul class="unstyled">
				        	<% loop Page(meetings) %>
				        		<% loop $Children.reverse.limit(10) %>
				        			<li> <a href="$Link"> $Title </a> </li>
				        		<% end_loop %>	
				        		<hr />
				        		<li><a href="$Link"> View All &rarr;</a></li>
				        	<% end_loop %>
				        	
				        </ul>
				   
                    </div>
                </div>
            </div>
        </section>
