class ReserveMailer < ApplicationMailer

  def reserve_email(reserve)
    @reserve = reserve
    mail(to: @reserve.restaurant.email, subject: '予約が入りました')
  end
end
