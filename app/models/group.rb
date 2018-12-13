class Group < ApplicationRecord
  validates :group_name, presence: true, length: { maximum: 30 }
end