class LegislatorsController < ApplicationController
  include Sun

  def index
    sunlight_client = Congress.new
    local_reps_raw_data = sunlight_client.local_legislators(94105)
    data = JSON.parse(local_reps_raw_data.body)
    ids = data['results'].map{|rep| rep['bioguide_id']}
    p ids
    @legs = Legislator.where(:bioguide_id => ids)
    p @legs
    @legislators = Legislator.all
    render json: @legislators
  end

  def show

  end
end

