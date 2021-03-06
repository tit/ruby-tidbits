# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tidbits/version'

Gem::Specification.new do |spec|
  spec.name = 'ruby-tidbits'
  spec.version = Tidbits::VERSION
  spec.authors = ['Roman Konoplev']
  spec.email = ['roman@konoplev.pro']

  spec.summary = 'This is my personal library I use to share the Ruby tidbits I made it for my various projects'
  spec.homepage = 'https://github.com/konoplev-roman/ruby-tidbits'
  spec.license = 'MIT'

  spec.metadata['allowed_push_host'] = ''

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov', '~> 0.16.0'
  spec.add_development_dependency 'yard'
end
