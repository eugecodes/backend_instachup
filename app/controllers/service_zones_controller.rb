class ServiceZonesController < ApplicationController
  before_action :set_service_zone, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @service_zones = ServiceZone.all
    respond_with(@service_zones)
  end

  def show
    respond_with(@service_zone)
  end

  def new
    @service_zone = ServiceZone.new
    respond_with(@service_zone)
  end

  def edit
  end

  def create
    @service_zone = ServiceZone.new(service_zone_params)
    @service_zone.save
    respond_with(@service_zone)
  end

  def update
    @service_zone.update(service_zone_params)
    respond_with(@service_zone)
  end

  def destroy
    @service_zone.destroy
    respond_with(@service_zone)
  end

  private
    def set_service_zone
      @service_zone = ServiceZone.find(params[:id])
    end

    def service_zone_params
      params.require(:service_zone).permit(:longitude, :latitude)
    end
end
