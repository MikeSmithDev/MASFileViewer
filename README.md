MASFileViewer
=======

A small example VS2012 C# project to show how to write a custom control using `ASP:TreeView` as a directory and file browsing tool, from http://mikesmithdev.com/blog/treeview-file-viewer-with-security/.

The sample project is to show usage. The relevant code to put into your own project is `/controls/fileViewer.ascx.`

1. By default it will recursively search the current directory (for the page the control is on) and all subdirectories. There is a public property called `AltRelFilePath` where you can specify any path you want to use.
3. It will find any `web.config` in the directories and it will apply the authorization rules you have for that directory.
4. It won't show directories that have no valid files in it.
5. It only shows the file types you want to see.

Typical implementation, to use the custom images, the `fileControl.ascx` will use
```ASPX
<asp:TreeView ID="_tree" CollapseImageToolTip="Close Folder" ExpandImageToolTip="Open Folder" 
  ParentNodeStyle-VerticalPadding="10" RootNodeStyle-NodeSpacing="10" NodeStyle-HorizontalPadding="10"
  ParentNodeStyle-HorizontalPadding="10" LeafNodeStyle-HorizontalPadding="10" LineImagesFolder="~/images/treeview"
  ShowLines="true" NodeWrap="true" ExpandDepth="1"  runat="server"></asp:TreeView>
```

You could use the built-in styles with a simpler implementation:
```ASPX
<asp:TreeView ID="_tree" CollapseImageToolTip="Close Folder" ExpandImageToolTip="Open Folder" NodeWrap="true" ExpandDepth="1"  runat="server"></asp:TreeView>
```


## The Files
The included solution is for VS2012. It includes a basic templated site with three links to show different usage:

**Using Current Directory** `default.aspx`

This uses the default, recursive search function of the tool where it searches the current directory and all sub-directories.


**Using Relative Directory** `rel.aspx`

This uses the `AltRelFilePath` to specify a directory to use instead of searching the current directory.


**Another Current Directory** `/documents/default.aspx`

Just another demonstration of the default functionality of looking up the current directory.


## Security
Also included is the `Be Admin!` button which sets a username of "Admin" to show how the control will now grant your view access to a subfolder under `documents` named `adminFiles` that was previously not visible.


## TODO
The images/lines in this mode need a bit of tweaking, as the dotted lines don't always line up perfectly.
