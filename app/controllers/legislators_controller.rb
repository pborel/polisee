class LegislatorsController < ApplicationController
  include Sun

  def index
    client = Congress.new
    reps_search = client.local_politicians(94105)
    @local_politicians = JSON.parse(reps_search.body)
    p @local_politicians
    bill_search = client.bills
    @all_bills = JSON.parse(bill_search.body)
    p @all_bills
  end

  def show

  end

end

