#GA Project 2: Electric Boogaloo
- (the project readme file is inside the bulletin folder, my origin remote was set outside, whoops)

##Stuffs needed
- User login implementation
  - only the user that posted is allowed to edit and delete and edit/delete the comments
  - comentee can edit/delete
  - contact info in the user (only users can see)
    - setup a request contact to see their email or phone number. by default that contact information is hidden.

##Captains log

-7/4/2016
 CHECK-- need to figure out how to get post show to work

 CHECK-- need to figure out how to create post has a proper redirect (Do I have to make an index? I want it to redirect to posts/show.html)
    CHECK--YES--do we need to nest it?
   CHECK --redirects to Index.
    --Does not create the post though..

-7/5/2016
     CHECK--does not create new post, need to check now that it is nested
     CHECK--need to add string to comment for image
     CHECK--new comment is not working, stuck on the controller defining new
     --Need to add users, use devise
     CHECK--Need to work on EDIT of CRUD
     CHECK--Add Validation, limit chars to title to 50 chars
-7/6/2016
   --add users via devise
   --make prettier buttons
   --form labels
   --recheck css, add space at the bottom
   --try to format the sign better
   --do the video recording thing


##Technologies used
--Ruby on Rails
--Resources of WDI General Assembly
--devise - for login authentication
--imgur - for free image hosting
--function linkify(inputText) http://stackoverflow.com/questions/37684/how-to-replace-plain-urls-with-links
