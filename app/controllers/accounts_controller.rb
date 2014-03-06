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
    if Budget.find_by(:user_id => params[:id]).present?
      b = Budget.find_by(:user_id => params[:id])
    else
      b = Budget.new
    end
    b.user_id = session[:id]
    b.total = params[:total]
    b.retirement = params[:inputBox2]
    b.savings = params[:inputBox3]
    b.loans = params[:inputBox4]
    b.rent = params[:inputBox5]
    b.utilities=params[:inputBox6]
    b.cable=params[:inputBox7]
    b.phone=params[:inputBox8]
    b.cleaning=params[:inputBox9]
    b.groceries=params[:inputBox10]
    b.dining=params[:inputBox11]
    b.entertainment=params[:inputBox12]
    b.transportation=params[:inputBox13]
    b.clothes=params[:inputBox14]
    b.misc=params[:inputBox15]
    b.save
    redirect_to root_url

  end

  def stocks

    
  end
end
