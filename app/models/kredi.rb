class Kredi < ApplicationRecord
  belongs_to :kredi_requests

  # Prestamo
  has_many :payments

  validates_presence_of :active,
                        :finished,
                        :kredi_start,
                        :kredi_end,
                        :annual_interest,
                        :payments,
                        :payments_amount,
                        :adequate_amout,
                        :final_amount,
                        :bank_arrearsm
end
