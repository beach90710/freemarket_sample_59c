class MypageController < ApplicationController
  
  before_action :set_user


  def index
   
  end

  def profile
  end

  def deliver_address
  end

  def card
  end

  def email_password
  end

  def identification
  end
  
  def sms_confirmation
  end

  def logout
  end

  def set_user
    @user = current_user
  end

end
