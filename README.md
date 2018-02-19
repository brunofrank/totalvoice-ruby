# TotalVoice

Gem para consumo da API da TotalVoice.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'TotalVoice'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install TotalVoice

## Usage

Set your access_token
```ruby
  # config/initializers/total_voice.rb
  TotalVoice::Config.access_token = 'ACCESS_TOKEN'
```

Or just set the env var in your server

TOTAL_VOICE_ACCESS_TOKEN='ACCESS_TOKEN'


How to Send an audio.

```ruby
  audio = TotalVoice::Audio.new
  audio.send('5555555', 'https://github.com/brunofrank/totalvoice-ruby/tree/master/test/assets/piano.mp3')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brunofrank/totalvoice-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
