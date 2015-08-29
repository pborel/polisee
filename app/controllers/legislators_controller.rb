class LegislatorsController < ApplicationController
  include Sun


  def index
    sun_client = Congress.new
    reps_search = sun_client.local_politicians(94105)
    @local_politicians = JSON.parse(reps_search.body)
    bill_search = sun_client.bills
    @all_bills = JSON.parse(bill_search.body)
    getTwitterImages(@local_politicians)
    twitter_client = generate_twitter_client

    p user.profile_image_url_https
    render json: @all_bills
  end

  def show

  end

private
  def getTwitterImages(@local_politicians)
    twitter_client = generate_twitter_client
    get_image_for_each(@local_politicians)
  end

  def generate_twitter_client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
    end
  end

  def get_image_for_each(@local_politicians)

  end

end

