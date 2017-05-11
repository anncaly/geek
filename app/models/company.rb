class Company < ApplicationRecord
  has_many :jobs #, dependent: :destroy

  def delete_company
    self.update(deleted: true)
  end

end
