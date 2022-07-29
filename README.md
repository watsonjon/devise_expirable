# DeviseExpirable

Simple module for Devise that will expire a login session regardless of activity. It defaults to `1.day` but can be customized in your Devise setup with `config.expires_in = 20.minutes`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'devise_expirable'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install devise_expirable

## Usage

Simple module for Devise that will expire a login session regardless of activity. It defaults to `1.day` but can be customized in your Devise setup with `config.expires_in = 20.minutes`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/devise_expirable.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
