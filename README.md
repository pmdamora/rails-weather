# Ruby on Rails Weather Application

This application displays the weather.

## License

All source code is available under the MIT License. See [LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

``` | bash
> bundle install --without production
```

Next, migrate the database:

``` | bash
> rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

``` | bash
> rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

``` | bash
> rails server
```