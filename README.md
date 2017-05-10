# HackingMassScorekeeper

Do you play [HACKING MASS] at [Baseball Prospectus] with a group of friends?
Do you find yourself paging through the standings trying to figure out how your
group is doing relative to one another? You might find this gem useful!

## Installation

Install it yourself as:

    $ gem install hacking_mass_scorekeeper

## Usage

```ruby
teams = {
  "Ralph" => "BIG GAME JAMES",
  "Suzy" => "Nomar Mr. Nice Guy"
}

HackingMassScorekeeper::Standings.new(teams).pretty_list
```

You'll get a listing of the teams. If you want to do your own formatting, use
`#list` instead and get an array of hashes.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/geoffharcourt/hacking_mass_scorekeeper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[HACKING MASS]: http://www.baseballprospectus.com/hm/index.php
[Baseball Prospectus]: http://www.baseballprospectus.com/
