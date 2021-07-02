# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: ruby 2.7.3p183
* Rails versio: Rails 6.1.4

* Configuration
  In the console, execute the following commands, in the order indicated:
  
  - For dependencies:
    bundle install
    
  - Database creation
    * rake db:create
    * rake db:migrate

* Database initialization
  In the start.sql file you will find the INSERT statements for each of the entities.


NOTE:
If you have an issue like this:

*** Webpacker can't find application.js in /root_your_site/packs/manifest.json

You should execute following line in the console:
--> bundle exec rails webpacker:install
