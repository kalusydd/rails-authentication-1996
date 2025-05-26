class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @first_name = current_user.email.split('@').first.capitalize
  end
end
