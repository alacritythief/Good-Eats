class RecentController < ApplicationController
  def index
    @restaurants = Restaurant.all.order(updated_at: :desc).take(10)
  end
end
