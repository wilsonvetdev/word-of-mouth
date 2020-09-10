## Word Of Mouth

Word Of Mouth is an app for students to read and/or write reviews about their professors. * Not deployed *


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
