class OrdersController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menus = @restaurant.menus
  end

  def new
    @order = Order.new
    @menu = Menu.find(params[:menu_id])
    @reserve = Reserve.where(user_id: current_user.id).last
  end

  def create
    @order = Order.new(order_params)
    @menu = Menu.find(order_params[:menu_id])
    if @order.save
      redirect_to orders_path(restaurant_id: @menu.restaurant_id), success: '注文を一件登録しました'
    else
      flash.now[:danger] = '注文を登録できませんでした'
      render :new
    end
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    redirect_to confirm_orders_path
  end

  def confirm
    @reserve = Reserve.where(user_id: current_user.id).last
    @orders = Order.where(reserve_id: @reserve.id)
  end

  def complete
    @reserve = Reserve.find(params[:id])
    @orders = Order.where(reserve_id: @reserve.id)
    ReserveMailer.order_email(@reserve).deliver_later
  end

  private
  def order_params
    params.require(:order).permit(:user_id, :quanity, :menu_id, :reserve_id)
  end
end
