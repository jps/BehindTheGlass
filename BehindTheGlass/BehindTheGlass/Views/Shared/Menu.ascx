<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="MainMenuContainer">
    <li id="MainMenu">
       <ul> <%= Html.ActionLink("Home", "index", "Home")%></ul>
       <ul> <%= Html.ActionLink("Clients", "Clients", "Home")%></ul>
       <ul> <%= Html.ActionLink("Live", "Live", "Home")%></ul>
    </li>
</div>