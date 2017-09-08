# Activemodel::Type::Symbol

Symbols! They're awesome! Sadly, converting an attribute from a string to a
symbol and vice versa by hand is annoying, and validations don't quite work the
way you expect without type casting; which can result in hackneyed
workarounds like `def field=value; super(value.to_sym); end;` and `def field;
super&.to_sym; end;`

ActiveRecord 5 introduces the concept of *type casting* for attributes; which
beyond being a great way to leverage composition in your models; also allows us
to use symbols more fluidly!

Unfortunately, ActiveModel::Type (the default set of type converters) doesn't
include Symbol by default, so I'm tossing one up here so we can all party hardy
together until they slurp this code right on up into their codebase.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activemodel_type_symbol'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activemodel_type_symbol

## Usage

```
class YourFancyModel < ApplicationRecord
  validates_inclusion_of :some_field, in: %i(one two three)
  attribute :some_field, :symbol
end


model = YourFancyModel.new(some_field: "one")
model.some_field # => :one
model.valid?     # => true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/[USERNAME]/activemodel_type_symbol. This project is intended
to be a safe, welcoming space for collaboration, and contributors are expected
to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of
conduct.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ActiveModel::Type::Symbol project’s codebases, issue
trackers, chat rooms and mailing lists is expected to follow the [code of
conduct](https://github.com/[USERNAME]/activemodel_type_symbol/blob/master/CODE_OF_CONDUCT.md).
