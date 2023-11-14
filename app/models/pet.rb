class Pet < ApplicationRecord
  validates :name, presence: true
  # dog cat rabbit snake turtle
  validates :species, inclusion: { in: %w(dog cat rabbit snake turtle),
            message: "we don't work with this specie: %{value}"  }
end
