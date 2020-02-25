class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title , presence: true
    has_one_attached :image
end
