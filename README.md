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
  
**USERS**  
username: emailaddress  
instructor_id or null  
player_id or null  
game_id: multiple game ids  
// no password data saved at this point ??  
  
**INSTRUCTORS**  
game_id: multiple, the games where as instructor  
task_id: multiple, the tasks where as instructor  
invited_user_id: multiple, as USERS.id  
  
**PLAYERS**  
game_id: multiple, where as a player  
user_id  
  
**GAMES**  
instructor_id  
player_id: multiple, all players invited to play  
name  
description  
tasks: multiple, all tasks for this game  
  
**TASK**  
instructor_id  
game_id  
type: text | multiple  
descrtiption  
question  
feedback  
multiple_answers or null  
  
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
task_id  
game_scoreboard_id  
player_id  
answer_text  
answer_multiple  
points  
status: FINISHED | UNFINISHED  

