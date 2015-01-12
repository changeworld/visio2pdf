# Visio2pdf

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
3. Execute before commit your changes (bundle exec rake)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

## License

MIT License. For more imformation, please see LICENSE.txt.