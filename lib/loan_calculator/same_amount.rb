module LoanCalculator
  # 等额本息贷款计算器
  class SameAmount < Base
    def title
      '等额本息'
    end

    def mounth_amount_info
      "月还款金额 #{month_amount.round(2)} 元"
    end

    def total_amount
      @month_amount * @month
    end

    def execute
      f = (1 + month_rate) ** @month
      @month_amount = @total * month_rate * f / (f - 1)
    end
  end
end
