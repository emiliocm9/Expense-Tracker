class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]
  before_action :logged_in_user, only: %i[index edit update show destroy]

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.all
    @user = current_user
    my_expenses
    sum_expenses
    @month_wise_sorted_alerts = @expenses.group_by { |t| t.created_at.month }
    @august = Expense.where("cast(strftime('%m', created_at) as int) = ?", '08')
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show; end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  def external
    external_expenses
    @user = current_user
    @expenses = Expense.all
    sum_external
  end

  # GET /expenses/1/edit
  def edit; end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = current_user.expenses.build(expense_params)
    respond_to do |format|
      if @expense.save
        format.html { redirect_to user_path(current_user), notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to @user, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def my_expenses
    @myexpenses = current_user.expenses.sort_by(&:created_at).reverse
  end

  def external_expenses
    expense_id = current_user.id
    @externalexp = current_user.expenses.where(user_id: expense_id, group_id: nil).sort_by(&:created_at).reverse
  end

  def sum_expenses
    @total = current_user.expenses.where.not(group_id: nil).pluck(:amount).sum
  end

  def sum_external
    @total = current_user.expenses.where(group_id: nil).pluck(:amount).sum
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_expense
    @expense = Expense.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:user_id, :group_id, :name, :amount)
  end
end
