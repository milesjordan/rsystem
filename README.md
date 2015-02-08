# RSystem

RSystem simply executes a system() call but it also echoes the command that it is about to execute to stdout.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rsystem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rsystem

## Usage

Right now this gem just contains one statuc method.

`RSystem::Runner:Run(<command>, echo=[true], options=[{}])`

Simply using `RSystem::Runner:Run(<command>)` will execute the command and echo it, returning the return code of the command that is ran.

The options that you can pass are the same as the ones listed for the [spawn](http://www.ruby-doc.org/core-2.2.0/Kernel.html#method-i-spawn) method in Ruby's Kernel module. 

## Todo

- output logging to a file
- stdout/stderr configuration

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rsystem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
