class User < ApplicationRecord
    has_many :toy, dependent: :destroy
end
