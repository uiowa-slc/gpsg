
$Header
<main class="main-content__container" id="main-content__container">

    <!-- Background Image Feature -->
    <% if $BackgroundImage %>
        <% include FeaturedImage %>
    <% end_if %>

<% if not $BackgroundImage %>
    <div class="column row">
        <div class="main-content__header">
            $Breadcrumbs
            <h1>$Title</h1>
        </div>
    </div>
<% end_if %>

$BeforeContent

<div class="row">

    <div class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding<% end_if %> <% if $Children || $Menu(2) || $SidebarArea.Elements ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
        $BeforeContentConstrained
        <% if $MainImage %>
            <img class="main-content__main-img" src="$MainImage.ScaleMaxWidth(500).URL" alt="" role="presentation"/>
        <% end_if %>
        <div class="main-content__text">

        <h2>Meeting Date</h2> <p>$Date.Nice <% if $Time %>at $Time<% end_if %></p>
        <h2>Location</h2><p>$Location</p>

        <h2>Meeting Documents</h2>
        <p>

        <% if $Agenda || $MeetingNotes || $OtherDocuments %>
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
        <% else %>
            There are no documents listed for this meeting.
        <% end_if %>
    </p>

        <% if $Notes %>
            <h3>Additional Notes:</h3>
            $Notes
        <% end_if %>
    </article>
            $AfterContentConstrained
            $Form
        </div>

        <% if $ShowChildPages %>
            <% include ChildPages %>
        <% end_if %>

    </div>
    <aside class="sidebar dp-sticky">

        <% if $SideBarView %>
            $SideBarView
        <% end_if %>
        $SidebarArea
    </aside>
</div>
$AfterContent


</main>
