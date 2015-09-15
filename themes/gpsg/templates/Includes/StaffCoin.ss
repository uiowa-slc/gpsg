<li>
      <% if $Photo %>
      <a href="$Link" class="staff-link">
            <img class="staff-img" data-src="$Photo.CroppedImage(350,350).URL" data-src-small="$Photo.CroppedImage(150,150).URL" data-src-medium="$Photo.CroppedImage(250,250).URL" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="">
      </a>
      <% else %>
      <a href="$Link" class="staff-link">
            <img src="{$ThemeDir}/images/copy2.jpg">
      </a>
      <% end_if %>
      <p class="staff-name">
            <a href="$Link" class="show-for-large-up">$FirstName $LastName</a>
            <a href="$Link" class="hide-for-large-up">$FullNameTruncated</a>
            <!--<a href="$Link" class="hide-for-large-up">$FullNameTruncated</a>-->
            <% if $Position %><small class="staff-position">$Position</small><% end_if %>
      </p>
</li>