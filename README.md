# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: `2.5.1`

* Configuration
Download and install Ruby on Rails on your machine.

-unzip the code artifact in your local machine

-Install rails

```bash
gem install rails
```

-Bundle the app

```bash
bundle install
```

-Open the database.yml and modify the following snippet with the username and password:

```yml
  username: nouman
  password: <%= ENV['SAMPLE_DATABASE_PASSWORD'] %>
```

-In order to create the database schema:

```bash
rails db:migrate
```

-To start the server:

```bash
rails s
```

The web application can be accessed over http://localhost:3000.