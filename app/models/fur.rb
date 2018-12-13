class Fur < ApplicationRecord  
  validates :type_name, presence: true, length: { maximum: 20 }
end