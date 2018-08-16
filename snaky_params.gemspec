# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "snaky_params/version"

Gem::Specification.new do |spec|
  spec.name          = "snaky_params"
  spec.version       = SnakyParams::VERSION
  spec.authors       = ["Usman Sherwani"]
  spec.email         = ["uxman.sherwani@gmail.com"]

  spec.summary       = %q{Middleware to convert params to snake_case}
  spec.description   = %q{Middleware to convert params to snake_case. Useful for APIs}
  spec.homepage      = "https://github.com/uxman-sherwani/snake_params"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 5.0"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
