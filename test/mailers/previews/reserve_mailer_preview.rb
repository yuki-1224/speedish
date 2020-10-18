# Preview all emails at http://localhost:3000/rails/mailers/reserve_mailer
class ReserveMailerPreview < ActionMailer::Preview
  def resnoti
    reserve = Reserve.last

    ReserveMailer.reserve_email(reserve)
  end
end
