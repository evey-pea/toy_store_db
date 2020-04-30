class Category < ApplicationRecord
    has_many :toys_categories
    has_many :toys, through: :toys_categories
end
