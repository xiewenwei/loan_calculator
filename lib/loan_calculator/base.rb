# 贷款计算器基础类
module LoanCalculator
  class Base
    MONTHS_OF_YEAR = 12

    attr_reader :year_rate, :month_amount

    # 初始化，构造一个贷款计算器
    # @param [<decimal>, <integer>, <decimal>]
    #   total 总贷款金额，单位万元，如 100 表示 100 万元
    #   year 贷款年限，如 5 表示 20 年折 240 个月
    #   rate 贷款利率，如 4.9 表示利率为  4.9%
    # 初始化后直接执行计算，可以通过方法获取各个数据，可以通过 display 打印完整信息
    # 可获取信息包括
    #   month_amount
    #   total_amount
    #   total_interest
    #   year_rate
    #
    def initialize(total, year, rate)
      @total = total * 10000.0
      @year = year
      @month = @year * MONTHS_OF_YEAR
      @year_rate = rate / 100.0
      execute
    end

    def total_amount
      raise NotImplementedError, "total_amount has been not implemented"
    end

    def total_interest
      total_amount - @total
    end

    def month_rate
      #@month_rate ||= (@year_rate + 1) ** ( 1.0 / MONTHS_OF_YEAR) - 1.0
      @month_rate ||= @year_rate / MONTHS_OF_YEAR
    end

    # 计算
    def execute
      raise NotImplementedError, "execute has been not implemented"
    end

    def mounth_amount_info
      raise NotImplementedError, "mounth_amount_info has been not implemented"
    end

    def title
      ''
    end

    # 显示计算结果
    def display
      puts "-" * 80
      puts "#{title}贷款计算结果"
      puts "贷款金额：#{@total} 元"
      puts "贷款期限：#{@month} 个月"
      puts "年利率：#{(@year_rate * 100).round(4)}%"
      puts "月利率：#{(@month_rate * 100).round(4)}%"
      puts mounth_amount_info
      puts "总还款金额：#{total_amount.round(2)} 元"
      puts "总利息：#{total_interest.round(2)} 元"
      puts "-" * 80
    end

  end
end
