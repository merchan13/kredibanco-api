class KrediRequest < ApplicationRecord
  belongs_to :user
  belongs_to :admin

  # Prestamo
  has_one :kredi

  validates_presence_of :approved,
                        :estimated_start,
                        :estimated_end,
                        :amount
end
