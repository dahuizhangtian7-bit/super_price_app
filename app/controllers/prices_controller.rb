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

  private

  def price_params
    params.require(:price).permit(:item_id, :store_id, :price)
  end

end
