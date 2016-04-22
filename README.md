# CONCOCT  
##### Feb. 5th, 2016 - Ruby - Group Project for Epicodus  
##### By - [Krystan Menne](https://github.com/gitKrystan), [Lauryn Davis](https://github.com/lryndavis), [Jeff Seymour](https://github.com/jeffsdev), [Mike Mahoney](https://github.com/Mahonmr)

## Description  
###### CONCOCT is a web app for creating custom cocktail recipes, demonstrating object-oriented programming with Ruby and databases with PostgreSQL/ActiveRecord.

## Features  
###### User-side:
* Create custom cocktail recipes by selecting various complimentary liquors and ingredients, setting the drink strength, the sweetness/tartness level, and naming it.
* A custom recipe for the cocktail with the correct proportions of each liquor and ingredient is generated based on user specifications.
* Rate cocktails.
* Browse through cocktails by theme, ingredient, or rating  
* Styling changes based on the theme values of ingredients in a cocktail.  

###### Admin-side ( /admin - in the URL ):  
* View list of ingredients, cocktails, and drink categories that have been saved to the database.  
* Add a new ingredient, and choose what other ingredients it pairs well with.
* Assign categories that ingredient falls into (primary liquor, secondary liquor, mixer, etc.).
* Assign point values towards themes that the ingredient represents (winter, classy, brunch, tropical etc.).
* Edited and delete ingredients, cocktails.


## Technologies Used
Ruby, HTML, CSS, JavaScript/jQuery, PostgreSQL, ActiveRecord, RSpec, Capybara, Sinatra.

## Setup
#### Initial Steps
Make sure PostgreSQL is installed, and then clone this repository.  
Run `postgres` and `psql`.  
#### Create Database
Navigate in terminal to project directory.  
Type `bundle install` to ensure all Ruby gems and dependencies are installed.
```
rake db:create  
rake db:migrate  
rake db:test:prepare
```  
#### Import Sample Data
In `psql`:
```  
concoct_development < concoct.sql
concoct_test < concoct.sql  
```
#### Start App
Navigate in terminal to project directory.  
```
rake db:migrate  
rake db:test:prepare
ruby app.rb
```

## License  
Copyright (c) 2016 Krystan Menne, Lauryn Davis, Jeff Seymour, Mike Mahoney
This software is licensed under the MIT license.
