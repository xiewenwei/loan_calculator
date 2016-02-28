# LoanCalculator

LoanCalculator 是一个简单小型的房贷计算器，提供等额本息还款计算和等额本金还款计算，别让中介和银行把你蒙了。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'loan_calculator', git: 'https://github.com/xiewnewei/loan_calculator.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install loan_calculator

## Usage

```ruby
  # 贷款 100 万，20 年，利率 4.9%，等额本息还款
  tool = LoanCalculator.get(100, 20, 4.9)
  # 显示完整信息
  tool.display
  # 打印每月还款
  puts tool.month_amount

  # 贷款 100 万，20 年，利率 4.9%，等额本金还款
  tool = LoanCalculator.get(100, 20, 4.9, :same_capital)
  # 显示完整信息
  tool.display
  # 打印首月还款
  puts tool.month_amount
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/xiewenwei/loan_calculator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

