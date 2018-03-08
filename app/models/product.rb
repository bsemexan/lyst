class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :name, presence: true
    validates :image, file_size: { less_than: 1.megabytes }
end
