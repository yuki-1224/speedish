class ReserveMailer < ApplicationMailer

  def reserve_email(reserve)
    @reserve = reserve
    mail(to: 'rebogahun553@docomo.ne.jp', subject: '予約が入りました')
  end

  def order_email(reserve)
    @reserve = reserve
    @orders = Order.where(reserve_id: @reserve.id)
    mail(to: 'rebogahun553@docomo.ne.jp', subject: '注文が入りました')
  end
end
