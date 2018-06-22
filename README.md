[![Build Status](https://travis-ci.org/pmdamora/rails-weather.svg?branch=master)](https://travis-ci.org/pmdamora/rails-weather) [![Maintainability](https://api.codeclimate.com/v1/badges/39e31ea904e1d505ee32/maintainability)](https://codeclimate.com/github/pmdamora/rails-weather/maintainability)

# Ruby on Rails Weather Application

This application displays the weather.

## License

All source code is available under the MIT License. See [LICENSE.md](LICENSE.md) for details.

## [Demo](https://rails-weather-app.herokuapp.com/)

This application is available on Heroku as a demonstration.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```bash
> bundle install --without production
```

Next, migrate the database:

```bash
> rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```bash
> rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```bash
> rails server
```
