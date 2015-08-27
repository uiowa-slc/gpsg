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
				        		<% loop $Children.Limit(7) %>
                              		<li> <a href="$Link"> $Title </a> </li>
								<% end_loop %>
								<hr />
								<li><a href="$Link"> View all &rarr;</a></li>
				        	<% end_loop %>
				        	
				        </ul>

                    </div>
                    <div class="col-1-4 mod">
                    	<h3 class="mod-title">Latest news</h3>
				        <ul class="unstyled">
				        	<% loop Page(news) %>
				        		<% loop $BlogPosts.Limit(5) %>
				        			<li> <a href="$Link"> $Title </a> </li>
				        		<% end_loop %>	
				        		<hr />
				        		<li><a href="$Link"> View all &rarr;</a></li>
				        	<% end_loop %>
				        	
				        </ul>
				   
                    </div>
                </div>
            </div>
        </section>
