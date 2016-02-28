module LoanCalculator
  # 等本金还款贷款计算器
  class SameCapital < Base
    def title
      '等额本金'
    end

    def mounth_amount_info
      "首月还款金额 #{month_amount.round(2)} 元 （每月递减 #{decrease_interest.round(2)} 元）"
    end

    # 总还款金额
    def total_amount
      @total + @total * month_rate * (@month + 1) / 2
    end

    # 第 1 个月还款金额
    def execute
      capital = @total / @month
      interest = @total * month_rate
      @month_amount = capital + interest
    end

    # 每个月递减金额
    def decrease_interest
      capital = @total / @month
      capital * month_rate
    end
  end
end
