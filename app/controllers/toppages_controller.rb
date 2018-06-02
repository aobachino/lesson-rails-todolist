class ToppagesController < ApplicationController
  before_action :nav_controller　
  before_action :set_statuses, only: [:index]

  def index
    @my_tasks = current_user.tasks if user_signed_in?
  end

  def nav_controller　
    params[:page_info] = 'home'
  end

  private
    def set_statuses
      @statuses = Status.all
    end
end
