
## [Make the move from Sqlite3 to Postgres in Rails 6](https://dev.to/forksofpower/make-the-move-from-sqlite3-to-postgres-in-rails-6-34m2)

# install
```
sudo apt-get install postgresql

sudo systemctl status postgresql

bundle remove sqlite3

bundle add pg --install

gem install pg

# If you have any columns of the type t.string in your migrations, 
# it is highly recommended that you replace that type with t.text.

rails db:setup

rails s

```

############ update config/database.yml
```
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: alpha_blog_development

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: alpha_blog_test

production:
  <<: *default
  database: alpha_blog_production
  username: pixel_place
  password: <%= ENV['PIXEL_PLACE_DATABASE_PASSWORD'] %>
  
```






# restart postrgres
sudo service postgresql restart

```
sudo su postgres
psql 

\password postgres
--
postgres
--

sudo -u postgres createuser --superuser $USER

```

# create admin user
```
CREATE USER admin WITH SUPERUSER PASSWORD 'Maver1ck1965';

```

psql -d admin -U admin

# create application user
```
CREATE USER heidless WITH PASSWORD 'Havana11';

```

# APPLICATION: DB 
```
CREATE DATABASE alpha-blog-db

```

# pgadmin
```
http://localhost/pgadmin4/browser/
---
rob.lockhart@yahoo.co.uk
havana11
---
```



# new user


# new db







