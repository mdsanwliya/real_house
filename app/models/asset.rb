class Asset < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'owner_id'
  has_many :photos


  def files=(array_of_files = [])
    array_of_files.each do |f|
      photos.build(image: f, asset: self)
    end
  end
end
