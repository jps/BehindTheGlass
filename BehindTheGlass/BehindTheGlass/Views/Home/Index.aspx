<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
    Sam Coveney 
    </h2>

    <p>
    Freelance Sound Engineer/Producer working in and around the Brighton area. Working with a range of different bands, from a number of varied genres and styles, as well as being engaged with live music, and in association with the community radio station, Radio Free Brighton.
    </p>
    <p>
    Recording, Editing, Mixing, Mastering and Live Sound.
    </p>

    <img src="<%:Url.Content("~/Content/images/Sam.png")%>" alt="photo of sam" />


</asp:Content>
