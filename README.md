# Rails sandbox

## Test

```
bin/rspec-queue
```

## Database poolの謎

```
     ActiveRecord::StatementInvalid:
       SQLite3::BusyException: database is locked
     # ./spec/views/users/index.html.erb_spec.rb:6:in `block (2 levels) in <top (required)>'
     # ------------------
     # --- Caused by: ---
     # SQLite3::BusyException:
     #   database is locked
     #   ./spec/views/users/index.html.erb_spec.rb:6:in `block (2 levels) in <top (required)>'
```

が、

https://stackoverflow.com/questions/7154664/ruby-sqlite3busyexception-database-is-locked

で解決できた。

defaultだと少ない？

## マルチDB実行

https://qiita.com/yagince/items/4dd3348c056929687510

