class ReservesController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reserve = Reserve.new
  end

  def create
    @reserve = Reserve.new(reserve_params)
    if @reserve.save
      redirect_to complete_reserves_path(id: @reserve.id)
      ReserveMailer.reserve_email(@reserve).deliver_later
    else
      flash.now[:danger] = '予約できませんでした'
      @restaurant = Restaurant.find(@reserve.restaurant_id)
      render :new
    end
  end

  def complete
    @reserve = Reserve.find(params[:id])
  end

  private
  def reserve_params
    params.require(:reserve).permit(:reserved_at, :num_of_peo, :restaurant_id)
  end
end
