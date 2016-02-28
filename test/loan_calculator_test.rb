require 'test_helper'

class LoanCalculatorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::LoanCalculator::VERSION
  end

  def test_calculating
    tool = LoanCalculator.get(165, 30, 5.39)
    tool.display

    tool = LoanCalculator.get(165, 30, 5.39, :same_capital)
    tool.display

    tool = LoanCalculator.get(100, 20, 4.9)
    tool.display

    tool = LoanCalculator.get(100, 20, 4.9, :same_capital)
    tool.display
  end
end
