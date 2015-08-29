class BillsController < ApplicationController
  include Sunlight

  def index
    sunlight_client = Congress.new
    @bills = sunlight_client.bills
    render json: @bills
  end

  def show
    sunlight_client = Congress.new
    @bill = sunlight_client.bill(params[bill_id:])
    render json: @bill
  end

end
