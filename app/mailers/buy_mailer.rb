class BuyMailer < ApplicationMailer
  def send_email(asset, customer)
    mail(to: asset.user.email, from: customer.email, subject: "Purchase the accommodations!")
  end
end
