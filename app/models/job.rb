class Job < ApplicationRecord
  has_many :applies
  belongs_to :company, foreign_key: :company_id
end
