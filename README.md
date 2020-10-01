## Word Of Mouth

Word Of Mouth is an app for students to read and/or write reviews about their professors. 
The application also allows a user to add a professor to a college of their choice. Search functionalities of colleges and professors are also included. 
* Not deployed *


## General Info

Word Of Mouth was developed as a Flatiron School Web Developement Module 2 project to demonstrate working knowledge of Relational Database Management, Active Records Associations, Create, Read, Update and Delete (CRUD) methods, and most importantly a student's knowledge of Ruby on Rails. 

This Ruby on Rails application utilizes the following:
* authorization and authentication
* custom routes and actions 
* knowledge of MVC(model-view-controller) layers
* frameworks and libraries(active record, active model, action view, etc...)


## Tech Stack

This web app employs the following technologies(not inclusive):

* Ruby [2.6.1]
* Rails [6.0.3.2]
* SQLite3 [~> 1.4] - Database
* Faker - seed fake data for rendering and behavior driven development purposes
* Bcrypt - authorization and authentication
* CSV - Gem that provides a complete interface to CSV files and data
* Bootstrap 4 - styling and displaying flash messages


## Data Source

https://nces.ed.gov/ipeds/datacenter/InstitutionByName.aspx


## Set-Up

1. clone this repo to your local environment -- git clone < git repository >
2. cd(change directory) into the repo
3. $ bundle install - installs gems and dependencies
4. $ rails db:migrate - creates the tables for the database
5. $ rails db:seed - seed the data necessary
6. rails s to start the server
7. go to your browser and type in localhost:3000 to explore the app

## What's Next?

Database schema will need to be updated with more tables to add more features.
Frontend will also be greatly improved, and will be revisited in the future after the end of the Web Dev Fellowship at Flatiron.

Nice to have features(not final):
* Password recovery
* Editing profile page for user
* Pagination

## Sample Images(video walk-through coming soon):

**Main Page of the application:**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.00.12%20PM.png)

**Page of a professor and their reviews:**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.00.22%20PM.png)

**User gets redirected if they are not logged in and trying to write a review:**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.00.33%20PM.png)

**Upon logging in, a user can see a history of the reviews they have written:**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.01.09%20PM.png)

**Search function for professors:**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.01.40%20PM.png)

**Main page for colleges(it shows the top three with the most activities):**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.02.14%20PM.png)

**Single page for a college and associated professors:**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.02.26%20PM.png)

**A form to add a professor to a college:**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.02.33%20PM.png)

**A form to add a review for a single professor:**
![sample image of project](https://github.com/wilsonvetdev/word-of-mouth/blob/master/app/assets/images/Screen%20Shot%202020-10-01%20at%205.02.49%20PM.png)

**Showcasing the search functionality for colleges:**
![sample image of project](colleges_list.png)

