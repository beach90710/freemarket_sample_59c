class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :sign_up_action, except: [:index]

  def sign_up_action
    unless user_signed_in?
    @user = User.new
    render template: 'signup/step1'
    end
  end
end
