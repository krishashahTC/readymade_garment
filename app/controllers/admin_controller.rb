class AdminController < ApplicationController

  def index
    @sellers = Profile.where(role: 'seller')
  end
end
