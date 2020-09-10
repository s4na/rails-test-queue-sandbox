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


##

https://docs.docker.com/compose/rails/

```
docker-compose run web bundle exec <command>

docker-compose run web bundle exec rspec

# スクリプトを使ってテスト
docker-compose run web bundle exec bin/rspec-queue
docker-compose run web bundle exec rspec-queue rspec
```

## /usr/local/bundle/gems/bootsnap-1.4.8/lib/bootsnap/compile_cache/iseq.rb:38:in `fetch': No such file or directory - bs_fetch:atomic_write_cache_file:chmod (Errno::ENOENT)

