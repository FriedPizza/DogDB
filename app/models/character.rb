class Character < ApplicationRecord
  validates :char_name, presence: true, length: { maximum: 50 }
end