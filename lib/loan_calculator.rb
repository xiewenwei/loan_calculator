require "loan_calculator/version"
require 'loan_calculator/base'
require 'loan_calculator/same_amount'
require 'loan_calculator/same_capital'


module LoanCalculator
  def self.get(total, year, rate, mode = :same_amount)
    case mode
      when :same_amount
        SameAmount.new(total, year, rate)
      when :same_capital
        SameCapital.new(total, year, rate)
    else
      raise "Unknown calculator mode"
    end
  end
end
