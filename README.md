# README
To run the project, you should have:

    - Ruby version: 2.5.1
    
    - Postgresql 10.5

* Configuration

    - Create an ENV variable for PASSWORD in order to connect your database:

    - clone the repository and execute the following command:
    
      ` bundle install`

* Database creation

    - Create a database: blog_development

    - The blog is using postgres role

* Database initialization

    - To run migrations

     ` rails db:migrate  ` 

* To run the app:
   
    - ` rails server`

* How to run the test suite

    - To generate migrations for testing environment

     ` rails db:migrate RAILS_ENV=test  ` 

    - To run the test

* Deployment instructions:

    - To run migrations

     ` heroku run rails db:migrate `

    - To deploy on heroku:

     ` git push heroku master `
