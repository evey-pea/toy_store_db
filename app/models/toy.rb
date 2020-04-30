class Toy < ApplicationRecord
    belongs_to :user
    has_one :manufacturer
    has_many :toys_categories
    has_many :categories, through: :toys_categories
    end
