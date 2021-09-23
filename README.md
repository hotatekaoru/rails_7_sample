# versions
* Ruby: v3.0.2
* Rails: v7.0.0.alpha2

# :eyes: Problem

## 1. Run `db:schema:load` then Mysql2::Error occurs.

```
$ bin/rails db:schema:load
rails aborted!
ActiveRecord::StatementInvalid: Mysql2::Error: Invalid default value for 'registered_at'
path_to_project/sample/db/schema.rb:15:in `block in <main>'
path_to_project/sample/db/schema.rb:13:in `<main>'

Caused by:
Mysql2::Error: Invalid default value for 'registered_at'
path_to_project/sample/db/schema.rb:15:in `block in <main>'
path_to_project/sample/db/schema.rb:13:in `<main>'
Tasks: TOP => db:schema:load
(See full trace by running task with --trace)
```

## 2. Run `db:migrate` with Rails 7.0 and error occurs by datetime column with default option.

Open `sample/db/migrate/20210923090541_create_testings.rb` and change Line#1 from `[6.1]` to `[7.0]`.
And execute `db:migrate`.


```
$ bin/rails db:migrate
== 20210923090541 CreateTestings: migrating ===================================
-- create_table(:testings)
rails aborted!
StandardError: An error has occurred, all later migrations canceled:

Mysql2::Error: Invalid default value for 'registered_at'
path_to_project/sample/db/migrate/20210923090541_create_testings.rb:3:in `change'

Caused by:
ActiveRecord::StatementInvalid: Mysql2::Error: Invalid default value for 'registered_at'
path_to_project/sample/db/migrate/20210923090541_create_testings.rb:3:in `change'

Caused by:
Mysql2::Error: Invalid default value for 'registered_at'
path_to_project/sample/db/migrate/20210923090541_create_testings.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
```
