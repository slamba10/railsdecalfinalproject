Title: Task Manager 4.0
Team Members: Franky Guerrero, Connie Kim, Sahil Lamba, James Uejio
Demo Link: https://ancient-escarpment-5772.herokuapp.com

Idea: An application where users can create tasks and assign it to different user. This will help increase efficiency and workflow.

Models and Description:
User
has name, email, and belongs to a Team and has many comments.
Task
has text and belongs to a team
Team
has name and has many users

Features:
Users can log in
Users can create tasks
User’s tasks that they were assigned appear on their profile

Division of Labor:
Franky: Created users and figured out user authentication
Connie: Created task models
Sahil: Figured out how the relationship between task and user
James: Helped with relationship and pushed to Heroku
