class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :first_name
  def home
  end

  def profile
  end

  private

  def first_name
    @first_name = current_user.email.split('@').first.capitalize
  end
end
