# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



# NOTES ON MAKING THE PROJECT

``sudo apt  install ruby``  
``sudo apt install sqlite3``  
``sudo apt-get install ruby-dev``  
``sudo gem install rails``  
``sudo apt install ruby-bundler``  
``rails new seppo``  
``cd seppo``  
``bundle install`` (errors in creating new project)  
``sudo apt install libyaml-dev``  
  
  
``bin/rails server``  
  
``bin/rails generate controller games index``  
  
// some time to think about data structures  
// repo made ready  
// normally at this point I would set up githooks, lint, prettier etc  
// but now trying to focus on creating code  
  
## Datastructures  
  
### TABLES:  

#### Basic structure without saving scores
  
**USERS**  
username: string (needs to be validated as email)  
instructor_id or null  
player_id or null  
// no password data saved at this point ??  
  
**INSTRUCTORS**  
game_id: multiple, the games where as instructor  
task_id: multiple, the tasks where as instructor   
user_id: reference  

**PLAYERS**  
game_id: multiple, where as a player  
user_id: reference  
  
**GAMES**  
instructor_id: references  
player_id: references or null (multiple, all players invited to play)  
name: string  
description: text  
tasks: multiple, all tasks for this game  
  
**TASK**  
instructor_id  
type: text | multiple  
descrtiption  
feedback  
multiple_answers or null  

**MULTIPLE_CHOICE**
aswer:string
points: integer
  
  
#### Tables needed to save scores
  
**HASHTABLE**  
player_id  
game_id  
value: game_scoreboard_id  
// nested hash, let's hope chatGPT got this right  
  
**GAME_SCOREBOARD**  
game_id  
player_id  
score  
status: invited | joined | finished | errorstatus  
active_task_id: id:s to all the task scoreboards in this game  
  
**TASK_SCOREBOARD**  
instructor_id  
game_scoreboard_id  
player_id  
answer_text  
answer_multiple  
points  
status: FINISHED | UNFINISHED  
  
  
``bin/rails generate model Games instructor_id:references player_id:references name:string description:text tasks:references``  
-> fixes to migrate and model  
``bin/rails db:migrate``  
  
controllers and models for games, users, instructors, players, tasks, multiple choices  
Next populate (by hand, if I had time I would make a script / test) and build views to show data so that correct functionality can be checked

After taking a look at things, I decided to create (kind of mock or temporary) views for different tables with option to add data. First step was to make it work with users. My main goal for now is to make users table have all the methods, make some form of views etc, so that those could be used to develop other endpoints.

Got index, show and new working with json. Delete keeps calling GET, might be a spelling error etc I'm blind to at this point. I'm not super proud, but it's something, and it's hard work.

