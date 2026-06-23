class ItemsController < ApplicationController

  def index
    @items = Item.includes(prices: :store).all
    @stores = Store.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: '商品を登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.includes(prices: :store).find(params[:id])
    @stores = Store.all
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to root_path, notice: '商品名を変更しました'
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :category_id)
  end
end
