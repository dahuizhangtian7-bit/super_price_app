class PricesController < ApplicationController

  def new
    @price = Price.new
    @items = Item.all
    @stores = Store.all
  end

  def create
    @price = Price.new(price_params)
    if @price.save
      redirect_to root_path, notice: '価格を登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @prices = Price.all
    @stores = Store.all
    @item = Item.find(params[:item_id])
  end

  def update
    @price = Price.find(params[:id])
    @price.update(price_params)
    redirect_to root_path, notice: '価格を変更しました'
  end

  private

  def price_params
    params.require(:price).permit(:item_id, :store_id, :price)
  end

end
