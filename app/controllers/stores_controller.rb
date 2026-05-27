class StoresController < ApplicationController

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to root_path, notice: '店舗を登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def store_params
    params.require(:store).permit(:name)
  end

end
