<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="MainMenuContainer">
    <ul id="MainMenu">
     <%= Html.ActionLink("Home", "index", "Home", null , new { Class = "myButton" })%>
     <%= Html.ActionLink("Clients", "Clients", "Home", null , new { Class = "myButton" })%>
     <%= Html.ActionLink("Live", "Live", "Home", null, new { Class = "myButton" })%>
    </ul>
</div>