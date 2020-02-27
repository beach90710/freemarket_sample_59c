class MypageController < ApplicationController

  def identification
    @address = Address.find_by(user_id: current_user.id)
  end

end
