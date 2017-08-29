# SnakyParams

SnakyParams is Rack middleware for Rails that automatically converts request parameter keys to snake_case. 

This is useful if you Rails app is being used as an API for a JavaScript frontend. In Ruby and Rails, the widely adopted naming convention is to use `snake_case` for variables, keys etc. Popular JavaScript style guides (such as the [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)) tend to recommend camelCase. This gem allows you to use snake_case in all Ruby/Rails code and camelCase in JavaScript code without having to worry about converting the case of parameter names or having non-conventional names.

## Installation

1. Add this line to your application's Gemfile and execute `bundle install`:

```ruby
gem 'snaky_params'
```

2. Add this line **as the last config** to `config/application.rb`:

```ruby
config.middleware.use SnakyParams::Middleware
```

## Usage

Conversion is automatic. All parameter keys in requests to your Rails application are converted to snake_case.

Example: 

- Your application receives a request to `yourapp.com/search?searchQuery=cobra`. In the `params` hash in your Rails controller, the param key name will be `search_query`.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/uxman-sherwani/snake_params.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

