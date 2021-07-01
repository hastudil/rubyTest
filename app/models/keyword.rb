class Keyword < ApplicationRecord
    # validates :name, presence: true
    validates :name,
                presence: true,
                uniqueness: {
                    alert: "You are trying to enter a keyword that already exists."
                }

    belongs_to :category
end