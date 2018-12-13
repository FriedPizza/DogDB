class Dog < ApplicationRecord
  validates :breed_name, presence: true, length: { maximum: 50 }
  validates :size, presence: true, length: { maximum: 10 }
  validates :maint_cost, presence: true, length: { maximum: 10 }
end