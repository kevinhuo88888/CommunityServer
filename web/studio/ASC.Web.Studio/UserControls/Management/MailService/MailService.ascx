﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MailService.ascx.cs" Inherits="ASC.Web.Studio.UserControls.Management.MailService" %>
<%@ Import Namespace="ASC.Web.Core.Mail" %>
<%@ Import Namespace="ASC.Web.Studio.Utility" %>
<%@ Import Namespace="Resources" %>

<div id="mailServiceBlock" class="settings-block">
    <div class="header-base"><%= Resource.MailServiceTitle %></div>

    <p><%= String.Format(Resource.MailServiceText.HtmlEncode(), "<b>", "</b>", "<a  class='link underline' href='http://helpcenter.onlyoffice.com/gettingstarted/mail.aspx#MailServer_block'>", "</a>") %></p>

    <div class="mail-service-item">
        <div class="header-base-small"><%= Resource.MailServiceServerIp %></div>
        <input id="mailServiceIp" type="text" class="mail-service-value textEdit" value="<%= ServerIp %>" placeholder="127.0.0.1" />
        <div class="gray-text"><%= string.Format(Resource.MailServiceExample, "127.0.0.1") %></div>
    </div>
        
    <div class="settings-switcher-content display-none">
        <div class="mail-service-item">
            <div class="header-base-small"><%= Resource.MailServiceUser %></div>
            <input id="mailServiceUser" type="text" class="mail-service-value textEdit" value="<%= User %>" placeholder="<%= MailServiceHelper.DefaultUser %>" />
            <div class="gray-text"><%= string.Format(Resource.MailServiceExample, MailServiceHelper.DefaultUser) %></div>
        </div>
        <div class="mail-service-item">
            <div class="header-base-small"><%= Resource.MailServicePassword %></div>
            <input id="mailServicePassword" type="text" class="mail-service-value textEdit" value="<%= Password %>" placeholder="<%= MailServiceHelper.DefaultPassword %>" />
            <div class="gray-text"><%= string.Format(Resource.MailServiceExample, MailServiceHelper.DefaultPassword) %></div>
        </div>
    </div>

    <div class="mail-service-item">
        <a class="link dotline settings-switcher-btn"><%= Resource.MailServiceShowAdvancedSettings %></a>
        <a class="link dotline settings-switcher-btn display-none"><%= Resource.MailServiceHideAdvancedSettings %></a>
    </div>

    <div class="middle-button-container">
        <span id="mailServiceSaveBtn" class="button blue disable"><%= Resource.SaveButton %></span>
        <span class="splitter-buttons"></span>
        <span id="mailServiceConnectBtn" class="button gray"><%= Resource.ConnectButton %></span>
        <a id="mailServiceLink" class="link underline <% if(string.IsNullOrEmpty(ServerIp)) { %>display-none<% } %>" target="_blank" href="<%= CommonLinkUtility.ToAbsolute("~/addons/mail/#administration") %>">
            <%= Resource.MailServiceGoToMailserver %>
        </a>
    </div>
</div>

<div class="settings-help-block" style="float: none">
    <p><%= String.Format(Resource.MailServiceHelp.HtmlEncode(), "<b>", "</b>", "<a href='https://helpcenter.onlyoffice.com/server/docker/mail/docker-installation.aspx'>", "</a>", "<br/>") %></p>
</div>

<% if(!string.IsNullOrEmpty(ServerIp)) { %>
<div class="disable">
    <div class="settings-help-block" style="float: none;">
        <p><%= String.Format(Resource.MailServiceWarning.HtmlEncode(), "<b>", "</b>", "<a href='" + CommonLinkUtility.ToAbsolute("~/addons/mail/#administration") + "'>", "</a>") %></p>
    </div>
</div>
<% } %>