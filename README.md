# README

* Ruby version: 2.5.1

* System dependencies
    - will_paginate: 3.1.5
    
    - will_paginate-bootstrap4 -> In order to use bootstrap4
    
    - Bootstrap: 4.1.3

    - jquery-rails

    - pg

* Configuration
    To run locally:
    - ` rails s`

* Database creation

* Database initialization
    
    - To run migrations

     ` rails db:migrate  ` 

* How to run the test suite

    - To generate migrations for testing environment

     ` rails db:migrate RAILS_ENV=test  ` 

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions:
    To run migrations

    - ` heroku run rails db:migrate `

    To deploy on heroku:

    - ` git push heroku master `
