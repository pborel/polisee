class BillsController < ApplicationController

  include Sun

  def index
    sunlight_client = Congress.new
    bills = sunlight_client.bills
    raw_data = JSON.parse(bills.body)
    render json: raw_data["results"]
  end

  def show

  end

end
