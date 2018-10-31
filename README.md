# README
To run the project, you should have:

    - Ruby version: 2.5.1
    
    - Postgresql 10.5

* Configuration

    - Create an ENV variable for PASSWORD and USER_NAME in order to connect your database:

    `USER_NAME="user_name" `  

    ` PASSWORD="password" `  

    - clone the repository and execute the following command:
    
      ` bundle install`

* Database creation

    - Create a database: blog_development

* Database initialization

    - To run migrations

     ` rails db:migrate  ` 

* To run the app:
   
    - ` rails server`

* How to run the test suite

    - You need To generate migrations for testing environment

     ` rails db:migrate RAILS_ENV=test  ` 

    - To run the test

        ` rails test ` 

* Deployment instructions:

    - To run migrations

     ` heroku run rails db:migrate `

    - To deploy on heroku:

     ` git push heroku master `
