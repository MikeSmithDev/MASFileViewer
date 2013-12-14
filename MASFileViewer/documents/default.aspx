<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MASFileViewer.documents._default" %>
<%@ Register TagName="FileViewer" TagPrefix="uc" Src="~/controls/fileViewer.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <h2>File Viewer Using Another Current Directory</h2>
            <uc:FileViewer ID="_fileViewer" runat="server" />
        </div>
    </div>   
</asp:Content>