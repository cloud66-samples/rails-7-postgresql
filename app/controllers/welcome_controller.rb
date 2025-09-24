class WelcomeController < ApplicationController
  def index
    @time_now = ::Time.now
    @redis_time_now = ::Rails.cache.fetch("redis_time_now", expires_in: 5.seconds) { ::Time.now }
  end
end
