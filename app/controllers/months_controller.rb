class MonthsController < ApplicationController
  def index
    @months = %w[January February March April May June July August September October November December]
  end

  def jan
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '01')
  end

  def feb
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '02')
  end

  def march
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '03')
  end

  def april
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '04')
  end

  def may
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '05')
  end

  def june
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '06')
  end

  def july
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '07')
  end

  def aug
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  def sept
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '09')
  end

  def oct
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '10')
  end

  def nov
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '11')
  end

  def dec
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '12')
  end
end
