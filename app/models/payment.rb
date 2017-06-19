class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :Kredi

  validates_inclusion_of :completed, in: [true, false]
  validates_inclusion_of :on_time, in: [true, false]

  validates_presence_of :amount
                        :estimated_payment_date
end
