class MonthsController < ApplicationController
  def index
    @months = %w[January February March April May June July August September October November December]
  end

  def jan
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '01')
    @total = @august.pluck(:amount).sum
    average_a
  end

  def feb
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '02')
    @total = @august.pluck(:amount).sum
    average_feb
  end

  def march
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '03')
    @total = @august.pluck(:amount).sum
    average_a
  end

  def april
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '04')
    @total = @august.pluck(:amount).sum
    average_b
  end

  def may
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '05')
    @total = @august.pluck(:amount).sum
    average_a
  end

  def june
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '06')
    @total = @august.pluck(:amount).sum
    average_b
  end

  def july
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '07')
    @total = @august.pluck(:amount).sum
    average_a
  end

  def aug
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
    @total = @august.pluck(:amount).sum
    average_a
    most_group
  end

  def sept
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '09')
    @total = @august.pluck(:amount).sum
    average_b
  end

  def oct
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '10')
    @total = @august.pluck(:amount).sum
    average_a
  end

  def nov
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '11')
    @total = @august.pluck(:amount).sum
    average_b
  end

  def dec
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '12')
    @total = @august.pluck(:amount).sum
    average_a
  end

  private

  def average_a
    @average = @total / 31
  end

  def average_b
    @average = @total / 30
  end

  def average_feb
    @average = @total / 29
  end

  def most_group
    arr = @august.where.not(group_id: nil).pluck(:group_id)
    most = arr.each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }.max_by(&:last)
    most_group = Group.find(most)
    @pop = most_group[0]
  end

  def most_expensive
    arr = @august.pluck(:amount)
    article_price = arr.last
    @article = Expense.where(amount: article_price)
  end
end
