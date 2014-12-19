
# Hugo DL bug

Here is a definition list, which should be treated like plain html inside.

<DL>
<DT>Hugo</DT><DD>A website generator.</DD>
<!-- this is a comment, and should be rendered as is by Hugo and ignored by  the browser.  -->
<DT>Hugo<DD>A website generator.

</DL>

<!-- this is a comment, rendered as is by Hugo and ignored by the browser.  -->


<OL>
<LI> this is an item in a numbered list

<!-- This is a comment in a list -->


<LI> this is another item in a numbered list

</OL>

<UL>
<LI> this is an item in an un-numbered list
<!-- This is a comment in a list -->
<LI> this is another item in an un-numbered list

</UL>

- this is a markdown list
- this is another entry in the list
- <!-- and this is a comment in a markdown list -->
The comment is here!

1. this is a markdown number list
2. <!-- and this is a comment in a markdown list --> The comment is here!
<!-- also a comment --> The comment is here!
2. <!-- and this is a comment in a markdown list --> The comment is here!
3. No comment

<!-- this is a comment, rendered as is by Hugo and ignored by the browser.  -->

<!-- and this is a comment in a markdown list --> 
<!-- and this is a comment in a markdown list --> The comment is here!

<!-- this is a comment, rendered as is by Hugo and ignored by the browser.  -->

