class SignupController < ApplicationController

  skip_before_action :sign_up_action, only: [:step1, :step2, :step3, :step4, :create, :done]



  def step1
    @user = User.new
  end

  def step2
    session[:user_params] = user_params
    @user = User.new(session[:user_params])
    render 'signup/step1' unless @user.valid?
    @address = Address.new
  end

  def step3
    session[:address_params_after_step2] = address_params
    @address = Address.new
    render 'signup/step2' unless session[:address_params_after_step2][:phone_number].present?
  end

  def step4
    session[:address_params_after_step3] = address_params
    session[:address_params_after_step3].merge!(session[:address_params_after_step2])
    @user = User.new
    @credit_payment = CreditPayment.new
    @address = Address.new(session[:address_params_after_step3].merge(user_id: 1))#バリデーション回避のために適当なuser_idをマージさせる
    render 'signup/step3' unless @address.valid?
  end

  def create
    session[:credit_payment] = credit_params
    @user = User.new(session[:user_params])
    @credit_payment = CreditPayment.new(session[:credit_payment].merge(user_id: 1))
    render 'signup/step4' unless @credit_payment.valid?
    unless @user.save
      reset_session
      render 'signup/step1'
    end
    @address = Address.create(session[:address_params_after_step3].merge(user_id: @user.id))
    @credit = CreditPayment.new(session[:credit_payment].merge(user_id: @user.id))
    if @credit.save
      reset_session
      session[:user_id] = @user.id
      save_user 
      redirect_to done_signup_index_path and return
    else
      reset_session
      redirect_to step1_signup_index_path
    end
  end

  def save_user
    render 'signup/step1' unless session[:user_id]
    sign_in User.find(session[:user_id]) unless user_signed_in?
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :first_name, :last_name, :first_name_kana, :last_name_kana, :birth_year, :birth_month, :birth_day)
  end
  
  def address_params
    params.require(:address).permit(:post_first_name, :post_last_name, :post_first_name_kana, :post_last_name_kana, :post_number, :prefecture, :city, :address_line, :building, :phone_number)
  end

  def credit_params
    params.require(:credit_payment).permit(:number, :cvc, :exp_month, :exp_year)
  end

end
