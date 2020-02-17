# Park Here!
Find a place to leave your car near you

## Instalation

```bash
brew install postgres # install postgreSQL
brew install yarn # install yarnpkg
rbenv install 2.6.3 # install ruby 2.6.3
gem install bundler
bundle install
```

## Configuration

```bash
# set environment variables POSTGRES_USERNAME and POSTGRES_PASSWORD
export POSTGRES_USERNAME=your_username_here
export POSTGRES_PASSWORD=your_password_here

rails db:setup # create, migrate and populate database
```

## Development server

```bash
rails server
```

## Tests

```bash
rails tests
```

## Staging deployment instructions

```bash
heroku login
git add-remote heroku https://url-goes-here
heroku deploy
```

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/SantiDepetris/park-here/blob/master/LICENSE) file for details

## Authors

- Leonel Gasparrini
- Santiago Depetris