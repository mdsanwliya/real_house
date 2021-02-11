class AccommodationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_asset, only: [:buy, :show]

  def index
    @assets = Asset.all.order(created_at: :desc)
  end

  def new
    @asset = Asset.new
  end

  def create
    asset = Asset.new(asset_param)
    if asset.save
      redirect_to root_path, notice: ''
    else
      render 'new'
    end
  end

  def buy
    VeryLongTaskWorker.perform_async(@asset.id, current_user.id)
    redirect_to root_path
  end

  def show; end

  private

  def asset_param
    params.require(:asset).permit(:owner_id, :address, :type,
      :price, :sqmt, :rooms, :floors, :air_cond, :units, :parking, :shops, files: [])
  end

  def set_asset
    @asset = Asset.find_by(id: params[:id])
  end
end
