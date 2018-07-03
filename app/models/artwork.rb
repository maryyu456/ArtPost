class Artwork < ApplicationRecord
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
  validates :name, presence: true, uniqueness: true
  
  extend FriendlyId
  friendly_id :name
  

  
  # def normalize_friendly_id(input)
  #   input.to_s.to_slug.normalize.to_s
  # end
    
#   def should_generate_new_friendly_id?
# 　　slug.blank? || name_changed? # slug 為 nil 或 name column 變更時更新
# 　end
end
