class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :user
    validates :title , presence: true
    validates :body , presence: true , length: {minimum: 10}
    has_one_attached :image
    paginates_per 5
end
