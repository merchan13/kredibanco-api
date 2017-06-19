class KrediRequest < ApplicationRecord
  belongs_to :user
  belongs_to :admin, optional: true

  # Prestamo
  has_one :kredi

  validates_inclusion_of :approved, in: [true, false]
  validates_presence_of :estimated_start,
                        :estimated_end,
                        :amount
end
