# ReveCitadels

[![Build Status](https://travis-ci.org/mstark/reve_citadels.svg?branch=master)](https://travis-ci.org/mstark/reve_citadels)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reve_citadels'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reve_citadels

## Usage

```ruby

# get one specific citadel by id
citadel = ReveCitadels::Citadel.find("1021257423043")

puts citadel.name

=> Iyen-Oursta - Ministry of Citadels


# get all known citadels
citadels = ReveCitadels::Citadel.all

puts citadels.size

=> 2121

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mstark/reve_citadels. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

