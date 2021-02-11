class VeryLongTaskWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  def perform(asset_id, user_id)
    asset = Asset.find_by(id: asset_id)
    user = User.find_by(id: user_id)
    if VeryLongTask.new.perform
      BuyMailer.send_email(asset, user).deliver_now
    end
  end
end