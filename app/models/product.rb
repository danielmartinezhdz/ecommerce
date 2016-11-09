class Product < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :user, :pricing

  has_attached_file :avatar, style: {medium:"300x300",thumb: "100x100"}, default_url: "missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
