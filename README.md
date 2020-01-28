# Searcher

Code exercise to be reviewed by VanHack team. This app contains a simple
search form that will look on a simple product database.

* Instructions to use the app

  - Follow this link: https://hernan-searcher.herokuapp.com/
  - The app is deployed on a free heroku instance, so please give it a minute
  to wake up.
  - Table will paint intially empty. Just write a phrase in the search
  box to see some results. You can see some prodcuts loaded on the database
  here: https://github.com/hernamvel/searcher/blob/master/db/products.json
  - You can order the table clicking on each column head.  It will refresh
  with new records brought from the database.
   
* What was used

  To build this app I used:
  
  - Ruby 2.5.3
  - Rails 6.0.0
  - Postgresql (any recent version will work)
  - Datatable in server process mode
  - Twitter bootstrap
  - pg_serach gem to use postgresql full text search


* If you want to run this locally

  - Clone this repo
  - Be sure to be on a rails 6 ruby compliant version
  - bundle install
  - Install yarn
  - Run migrations (adjust to desired database if don't want to use postgresql)
  - To run server:  rails server
  
* Relevant files to look

  - /app/controllers/products.rb (index and search actions)
  - /app/models/product.rb  (pg_search integration with weights configured)

* What's missing (and will do with more time)

  - Tests (yeah.. I know this is important, just ran out of time)
  - Filters buy country / price
