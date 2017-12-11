lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'visio2pdf/version'

Gem::Specification.new do |spec|
  spec.name          = 'visio2pdf'
  spec.version       = Visio2pdf::VERSION
  spec.authors       = ['changeworld']
  spec.email         = ['changesworlds@gmail.com']
  spec.summary       = 'Visio2pdf converts Visio files to PDF files.'
  spec.description   = 'Visio2pdf is a convert library,' \
    ' and easy to convert Visio files to PDF files with Ruby. ' \
    'Detailed description please see the README.md.'

  spec.homepage      = 'https://github.com/changeworld/visio2pdf'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.0.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'rubocop', '~> 0.49.0'
end
