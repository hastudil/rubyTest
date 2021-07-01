class Category < ApplicationRecord
    # validates :name, presence: true
    has_many :keywords
    # belongs_to :product

    validates :name,
                presence: true,
                uniqueness: {
                    message: ->(object, data) do
                        "#{object.name} is already taken."
                    end
                }
end
