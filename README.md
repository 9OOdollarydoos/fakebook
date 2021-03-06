# README

This is the final project in the Odin Project's Rails course found here:
https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/final-project
It is a basic clone of some of the main facebook functionality.

## Gems used:
- devise
- guard
- bulma
- fa_icons
- omniauth
- letter_opener

## Tasks:
- [X] Use PostgreSQL for your database from the beginning (not SQLite3), that way your deployment to Heroku will go much more smoothly. 
- [X] Users must sign in to see anything except the sign in page.
- [X] User sign-in should use the Devise gem. 
- [X] Users can send Friend Requests to other Users.
- [X] A User must accept the Friend Request to become friends.
- [X] The Friend Request shows up in the notifications section of a User’s navbar.
- [X] Users can create Posts (text only to start).
- [X] Users can Like Posts.
- [X] Users can Comment on Posts.
- [X] Posts should always display with the post content, author, comments and likes.
- [X] Treat the Posts Index page like the real Facebook’s “Timeline” feature – show all the recent posts from the current user and users she is friends with.
- [X] Users can create a Profile with a Photo.
- [X] The User Show page contains their Profile information, photo, and Posts.
- [X] The Users Index page lists all users and buttons for sending Friend Requests to those who are not already friends or don’t already have a pending request.
- [X] Sign in should use OmniAuth to allow a user to sign in with their real Facebook account. 
- [X] Set up a mailer to send a welcome email when a new user signs up. Use the letter_opener gem (see docs here) to test it in development mode.
- [X] Deploy your App to Heroku.
- [ ] Set up the SendGrid add-on and start sending real emails. It’s free for low usage tiers.
## Extra Credit
- [X] Make posts also allow images (either just via a URL or, more complicated, by uploading one).
- [X] Use the Active Storage to allow users to upload a photo to their profile.
- [X] Make your post able to be either a text OR a photo by using a polymorphic association (so users can still like or comment on it while being none-the-wiser).
- [X] Style it up nicely! We’ll dive into HTML/CSS in the next course.


## Notes:
- I need to get better at TDD. Testing just done by hand
- Bulma looks nice but can be a pain.
- Notifications works but not that well
- Cloud storage and sendgrid not added
- this is one of the few examples on the Odin Project that correctly uses polymorphic post types

## To Do
- Implement deleting posts
- consider removing username as its not used by Facebook
- get the avatar to match facebook when using omniauth
- optimise queries when loading post.users etc.