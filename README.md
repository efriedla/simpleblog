# README

Easy Template to get started:

* clone down

* run 'bundle install' in terminal

* run 'rake db:create' in terminal

* run 'rake db:migrate' in terminal

* if you already have a database name Post you can change it by going
- db folder and see a line that looks like 'create_table :posts do |t|'
- change ':posts' to the name you want.
- you can also change and update the paramiters here as well 

* if you had already migrated and wish to undo it you can run
- 'rake db:rollback' in your terminal and re-migrate your new database

* if you are basing your project off of this one without cloneing down, make sure to:
- go to your Gemfile and add 
    gem 'bootstrap-sass', '~> 3.2.0'
    gem 'autoprefixer-rails'  
- then run bundle install
- also go to your 'layouts/application.html.erb' file and add:    
    <%= stylesheet_link_tag    'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css' %>    


* I hope this was helpful, for better understanding watch this tutorial:    
           https://www.youtube.com/watch?v=pPy0GQJLZUM&t=1012s

* ...


