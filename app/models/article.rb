class Article < ActiveRecord::Base
  belongs_to :agenda
  belongs_to :user

  has_attached_file :image0
  has_attached_file :image1
  has_attached_file :image2
end
