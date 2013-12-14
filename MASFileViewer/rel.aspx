<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rel.aspx.cs" Inherits="MASFileViewer.rel" %>
<%@ Register TagName="FileViewer" TagPrefix="uc" Src="~/controls/fileViewer.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <h2>File Viewer Using Alternate Relative Directory</h2>
            <uc:FileViewer ID="_fileViewer" AltRelFilePath="~/documents/anotherCoolFolder" runat="server" />
        </div>
    </div>   
</asp:Content>

