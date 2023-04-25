class Genre < ApplicationRecord
  has_many :outputs, dependent: :destroy
end
