class AccountsController < ApplicationController
  def overview
    if session[:id].present?
      if Budget.find_by(:user_id => session[:id]).present?
        @budget = Budget.find_by(:user_id => session[:id])
      else
        @budget = Budget.new #PLACEHOLDER LOGIC
      end
    end

    if session[:id].present?
      @trans_list = Transaction.where("user_id = ? AND date >= ?", session[:id], Date.today.beginning_of_month)

    end

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
    retirement=params[:retirement]
    savings=params[:savings]
    loans=params[:loans]
    


  Category.all.each do |cat|
      if Budget.find_by(:user_id => params[:id], :category_id => cat.id).present?
        b = Budget.find_by(:user_id => params[:id], :category_id => cat.id)
      else
        b = Budget.new
      end
        b.user_id = params[:id]
        b.category_id = cat.id
        b.total = params[:"cat.name"]
        b.save
      end
      redirect_to root_url

  end
end
