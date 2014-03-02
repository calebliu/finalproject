class AccountsController < ApplicationController
  def overview
  end

  def transactions
  	@trans_list=Transaction.all.order('title asc')
  end

  def budget
  end

  def goals
  end

  def budgetcreate

  end
end
