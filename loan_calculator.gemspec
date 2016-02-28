# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'loan_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "loan_calculator"
  spec.version       = LoanCalculator::VERSION
  spec.authors       = ["vincent"]
  spec.email         = ["xiewenwei@gmail.com"]

  spec.summary       = %q{一个简单的房贷计算器.}
  spec.description   = %q{一个简单的房贷计算器，提供等额本息还款计算和等额本金还款计算。}
  spec.homepage      = "https://github.com/xiewenwei/loan_calculator"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
