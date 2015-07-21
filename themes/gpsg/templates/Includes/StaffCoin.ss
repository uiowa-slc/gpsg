<li>
      <% if $Photo %>
      <a href="$Link" class="staff-link">
            <img class="b-lazy staff-img" src="copy.jpg">
      </a>
      <% else %>
      <a href="$Link" class="staff-link">
            <img src="copy.jpg">
      </a>
      <% end_if %>
      <p class="staff-name">
            <a href="$Link" class="show-for-large-up">$FirstName $LastName</a>
            <a href="$Link" class="hide-for-large-up">$FullNameTruncated</a>
            <% if $Position %><small class="staff-position">$Position</small><% end_if %>
      </p>
</li>