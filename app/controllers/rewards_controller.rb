class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
    @rewards_page = true
  end
end
