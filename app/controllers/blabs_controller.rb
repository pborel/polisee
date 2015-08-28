class BlabsController < ApplicationController
  before_action :authenticate_request, only: [:create]

  def index
    @blabs = Blab.all.order(created_at: :desc)
    render json: @blabs, include: { user: { only: [:handle] } }, only: [:id, :content]
  end

  def create
    @blab = @current_user.blabs.build(blab_params)
    if @blab.save
      render json: @blab, include: { user: { only: [:handle] } }, only: [:id, :content], status: :created, location: blab_url(@blab, format: :json)
    else
      render json: @blab.errors, status: :unprocessable_entity
    end
  end

private
  def blab_params
    params.require(:blab).permit(:content)
  end
end
