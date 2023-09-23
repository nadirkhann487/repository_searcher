# Github Repository Searcher

A web app to search Github repositories.

Use the [github-search](https://github.com/Morred/github-search/tree/master) gem to fetch repositories.

## How to run the app

clone the github repository.

```ruby
bundle install
bundle exec rails db:migrate
bundle exec rails s
```

### Testing

`Rspec` has been used to test the functionality.

## Containerized

Application has been containerized using `Docker`.

- Replace `host` value from `localhost` to `db` in `database.yml`.
- Uncomment `username` and `password`.

```ruby
docker-compose build
docker-compose up
```
Application can be accessed on `localhost:3000`.

## CI pipeline

A template Jenkinsfile has been added to show how application's deployment pipeline would look like.

