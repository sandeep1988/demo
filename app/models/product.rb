class Product < ActiveRecord::Base
  attr_accessible :avatar
  #has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 has_attached_file :avatar,
    :styles => {
      :thumb => "190x190#",
      :small => "100x100#",
      :medium => "250x150>"
    }
  attr_accessible :name, :user_id, :price
  belongs_to :patient
end
