<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="MainMenuContainer">
    <li id="MainMenu">
       <ul> <%= Html.ActionLink("Home", "index", "Home", new { Class = "myButton" })%></ul>
       <ul> <%= Html.ActionLink("Clients", "Clients", "Home", new { Class = "myButton" })%></ul>
       <ul> <%= Html.ActionLink("Live", "Live", "Home", new { Class = "myButton" })%></ul>
    </li>
</div>