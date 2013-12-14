MASFileViewer
=======

A small example VS2012 C# project to show how to write a custom control using `ASP:TreeView` as a directory and file browsing tool, from http://mikesmithdev.com/blog/treeview-file-viewer-with-security/.

The sample project is to show usage. The relevant code to put into your own project is `/controls/fileViewer.ascx.`

1. By default it will recursively search the current directory (for the page the control is on) and all subdirectories. There is a public property called `AltRelFilePath` where you can specify any path you want to use.
3. It will find any `web.config` in the directories and it will apply the authorization rules you have for that directory.
4. It won't show directories that have no valid files in it.
5. It only shows the file types you want to see.

Typical implementation, to use the custom images would be
```ASPX
<asp:TreeView ID="_tree" CollapseImageToolTip="Close Folder" ExpandImageToolTip="Open Folder" 
  ParentNodeStyle-VerticalPadding="10" RootNodeStyle-NodeSpacing="10" NodeStyle-HorizontalPadding="10"
  ParentNodeStyle-HorizontalPadding="10" LeafNodeStyle-HorizontalPadding="10" LineImagesFolder="~/images/treeview"
  ShowLines="true" NodeWrap="true" ExpandDepth="1"  runat="server"></asp:TreeView>
```

The images/lines in this mode need a bit of tweaking, as the dotted lines don't always line up perfectly.
