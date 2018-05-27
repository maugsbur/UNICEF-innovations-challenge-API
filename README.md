# README

This is a basic API for mocking the needs of the [buyer frontend](https://github.com/maugsbur/UNICEF-innovations-challenge) which doesn't itself need a backend (except sales, but that is another project). It should be replaced by several more complete APIs: Products, Storage, Users, etc.

The API could have been mocked in the front end application, but this way enables to show some of what the back end could look like.

# Setup

* Ruby version
2.5.1

* System dependencies
Postgis
Postgres

* Configuration
Update config/database.yml with your credentials. In MacOS, add you system username to "username"

Install gems `bundle install`

* Database creation
`rake db:create`
`rake db:migrate`

* Database initialization
Run `rake db:seed` for example data

* How to run the test suite
run `rspec`

* Deployment instructions
Execute rails server by running `rails s`

Products list is available in `http://localhost:3000/api/products.json`

Stockrooms list is available in `http://localhost:3000/api/stockrooms.json`
