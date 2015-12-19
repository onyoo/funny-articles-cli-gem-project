# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'article/version'

Gem::Specification.new do |spec|
  spec.authors       = ["Aaron Figueroa", "Roberto Mesado"]
  spec.email         = ["figueroa.aaron@gmail.com"]
  spec.description   = %q{Newest funny articles from the Onion}
  spec.summary       = %q{Newest funny articles from the Onion}
  spec.homepage      = "https://github.com/Louiefigz/funny-articles-cli-gem-project"

  spec.files         = `git ls-files`.split($\)
  spec.executables   = ["funny-articles"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.name          = "funny_articles-cli-gem-project"
  spec.require_paths = ["lib", "lib/funny_articles.rb"]
  spec.version       = FunnyArticles::VERSION
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
  # spec.add_development_dependency "vcr"
  # spec.add_development_dependency "webmock"
end
