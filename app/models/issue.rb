class Issue < ApplicationRecord
  validates :issue_name, presence: true, length: { maximum: 50 }
end