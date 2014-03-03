class AccountsController < ApplicationController
  def overview
  end

  def transactions
  	if session[:id].present?
      @trans_list=Transaction.order('title asc').where(:user_id=>session[:id])
    else
      redirect_to root_url, notice: "Please login to view transactions"
    end
  end

  def budget
  end

  def goals
  end

  def budgetcreate

  end
end
