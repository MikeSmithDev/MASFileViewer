<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="fileViewer.ascx.cs" Inherits="MASFileViewer.controls.fileViewer" %>
<div id="_files" runat="server">
    <asp:TreeView ID="_tree" CollapseImageToolTip="Close Folder" ExpandImageToolTip="Open Folder" 
        ParentNodeStyle-VerticalPadding="10" RootNodeStyle-NodeSpacing="10" NodeStyle-HorizontalPadding="10"
        ParentNodeStyle-HorizontalPadding="10" LeafNodeStyle-HorizontalPadding="10" LineImagesFolder="~/images/treeview"
        ShowLines="true" NodeWrap="true" ExpandDepth="1"  runat="server"></asp:TreeView>
</div>
<div id="_noFiles" visible="false" runat="server">
    <p>No files!</p>
</div>