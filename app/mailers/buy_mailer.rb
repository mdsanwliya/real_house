class BuyMailer < ApplicationMailer
  def send_email(asset, customer)
    mail(to: [asset.user.email, customer.email], from: ENV['EMAIL'], subject: "Purchase the accommodations!")
  end
end
