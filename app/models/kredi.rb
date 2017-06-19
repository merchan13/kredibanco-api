class Kredi < ApplicationRecord
  belongs_to :kredi_requests

  # Prestamo
  has_many :payments

  validates_inclusion_of :active, in: [true, false]
  validates_inclusion_of :finised, in: [true, false]
  validates_inclusion_of :bank_arrears, in: [true, false]
  
  validates_presence_of :kredi_start,
                        :kredi_end,
                        :annual_interest,
                        :payments,
                        :payments_amount,
                        :adequate_amount,
                        :final_amount
end
