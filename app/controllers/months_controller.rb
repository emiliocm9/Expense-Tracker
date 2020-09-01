class MonthsController < ApplicationController
  def index
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  def jan
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  def feb
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  def march
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  def april
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  def may
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  def june
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  def july
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
    render :august
  end

  def aug
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
    render :august
  end

  def sept
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
    render :august
  end

  def nov
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
    render :august
  end

  def dec
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
    render :august
  end
end
