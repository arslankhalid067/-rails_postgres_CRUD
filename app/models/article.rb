class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :user
    validates :title , presence: true
    has_one_attached :image
end
