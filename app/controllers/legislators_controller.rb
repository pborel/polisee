class LegislatorsController < ApplicationController
  include Sun

  def index
    @legislators = Legislator.all
    render json: @legislators
  end

  def show

  end

  def images
    @images = Legislator.query_twitter_images
    render json: @images
  end
end

