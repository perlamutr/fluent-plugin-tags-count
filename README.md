# Fluent::Plugin::Tags::Count

This is funky best fluent filter plugin to filter records with too many tags inside

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fluent'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-tags_count

## Usage

Use it on your own risk. But remember - you better watch out huge damages!
```
<filter **>
  type tags_count
  tags_count 100
</filter>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/perlamutr/fluent-plugin-tags-count.git.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Fluent::TagsCount project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/fluentd-filter-tags-count/blob/master/CODE_OF_CONDUCT.md).
