# Visio2pdf

[![Gem Version](https://badge.fury.io/rb/visio2pdf.svg)](http://badge.fury.io/rb/visio2pdf)
[![Code Climate](https://codeclimate.com/github/changeworld/visio2pdf/badges/gpa.svg)](https://codeclimate.com/github/changeworld/visio2pdf)
[![Dependency Status](https://gemnasium.com/changeworld/visio2pdf.svg)](https://gemnasium.com/changeworld/visio2pdf)
[![Inline docs](http://inch-ci.org/github/changeworld/visio2pdf.svg?branch=master)](http://inch-ci.org/github/changeworld/visio2pdf)
[![Stories in Ready](https://badge.waffle.io/changeworld/visio2pdf.svg?label=ready&title=Ready)](http://waffle.io/changeworld/visio2pdf)

Visio2pdf converts Visio files to PDF files.

## Requirements

### Operating system and Software

Visio2pdf should run on Windows systems as long as Microsoft Visio 2010 is available on this platform.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'visio2pdf'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install visio2pdf

## Usage

Add this line to your application's file:

```ruby
require 'visio2pdf'

Visio2pdf.exec([Existing directory path of the Visio file], e.g. '../visio')
```

## Contributing

1. Fork it ( https://github.com/changeworld/visio2pdf/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Execute before commit your changes (`bundle exec rake`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

## License

MIT License. For more imformation, please see LICENSE.txt.