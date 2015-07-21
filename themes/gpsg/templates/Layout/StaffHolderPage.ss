<div class="gradient">
<div class="container clearfix">
      <div class="white-cover"></div>
      <section class="main-content $FirstLast">
            $Form
            $Content
            <% if $Teams %>
            <% loop $Teams %>
                  <h2 class="staff-title">$Title</h2>
                  <ul class="staff-coin-list large">
                  <% loop $SortedStaffPages %>
                        <% include StaffCoin %>
                  <% end_loop %>
                        <li class="filler"></li>
                        <li class="filler"></li>
                  </ul>
            <% end_loop %>
            <% else %>
                  <ul class="staff-coin-list large">
                  <% loop $Children %>
                        <% include StaffCoin %>
                  <% end_loop %>
                        <li class="filler"></li>
                        <li class="filler"></li>
                  </ul>
            <% end_if %>
            
      </section>
          <section class="sec-content hide-print">
            <% include SideNav %>
          </section>
      </div>
</div>
<% include TopicsAndNews %>
