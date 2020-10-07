class DetailOrdersController < ApplicationController
  before_action :set_detail_order, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @detail_orders = DetailOrder.all
    respond_with(@detail_orders)
  end

  def show
    respond_with(@detail_order)
  end

  def new
    @detail_order = DetailOrder.new
    respond_with(@detail_order)
  end

  def edit
  end

  def create
    @detail_order = DetailOrder.new(detail_order_params)
    @detail_order.save
    respond_with(@detail_order)
  end

  def update
    @detail_order.update(detail_order_params)
    respond_with(@detail_order)
  end

  def destroy
    @detail_order.destroy
    respond_with(@detail_order)
  end

  private
    def set_detail_order
      @detail_order = DetailOrder.find(params[:id])
    end

    def detail_order_params
      params.require(:detail_order).permit(:article_id, :amount, :order_id)
    end
end
