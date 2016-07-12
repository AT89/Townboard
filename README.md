#GA Project 2: Electric Boogaloo
##No one is going to use this unless its super super cute

##Captains log
--Edit/Delete functions on boards except the first board do not work. Need to work on that..
--User logins
--QOL - adding arrows on viewing comments/posts
--more cute animation

##GA bulletin board
-- Generally wanted to a Ruby on Rails app that can simply be a 'town board'. Users are people who are in the same location. This essentially bypasses Craigslist because the additional step of meeting someone is eliminated, since you are both in the same/near location.

More implications of this can be used for Pokemon Go, other game pickups, meetups, collaboration postings

-- create a bulletin board for initial boards:
  -- Gets: where users can post what they are looking for
  -- Pushes: where users can sell what they no longer need or want to sell etc
  -- Board is dynamic so the admin can create a board for ANYTHING

#Planning

##Stage 1 Implement a working rails-Get it all working in rails by Tuesday PM
-- get the rails app working with the models Boards, Posts, Comments (maybe)
-- Minimal to no styling needed

##Stage 2 - Getting extra features -1 day/Wednesday PM
-- user logins using github or facebook. The Update, edit, delete applies to the user.
-- implement images (use offsite hosting such as imgur, and just use the direct link to display)

##Stage 3 - Make it look presentable - Wednesday night
-- CSS ALL DAY (re-evaluating this, prob wont be for all day)
-- Add cute generated Avatars icons to post and replies (could use the 600 pokemon icons I have)

##User stories
- I want to post an item to sell, users are able to comment on it to question or what not
- I want to post an item to acquire, users are able to comment if they have it or where to suggest finding someone with it etc
- I (as a user) want to edit/delete my post and no one else to edit/delete the post
- I want to have a 1 click reference login (github, facebook) to make logging in painless
- I want to have an image show in part of the description for the item

##Entity Relationship Diagram
Index page - full o' Boards (town board) -named it Bulltin
.1   .1
|     \
|     M.-Users-.1-M.-Posts and Comments (and will need to make a join table)
M.     
Boards - Topic board (sell, buy, looking for, looking to sell)
.1
|
M.
Posts - The item or thing
.1
|
M.
Comments - people can contact

(will add an image later..)

##Models
Board: Title-S

Posts: Title-S, Author-S, Description-T, Value-I, Image-S

Comments: Author-S, Comment-T

 Dates can auto generate with:

 ```
 def generate_timestamp
   self.timestamp_field = DateTime.now
 end
 ```

 edit: i found an easier solution for timestamps

##Technologies used
--Ruby on Rails
--Resources of WDI General Assembly
--devise - for login authentication
--imgur - for free image hosting
--function linkify(inputText) http://stackoverflow.com/questions/37684/how-to-replace-plain-urls-with-links
