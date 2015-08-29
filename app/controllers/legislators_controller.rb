class LegislatorsController < ApplicationController
  include Sun


  def index
    @legislators = Legislator.all
    render json: @legislators
  end

  def show

  end
end

