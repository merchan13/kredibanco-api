class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :Kredi

  validates_presence_of :amount,
                        :completed,
                        :estimated_payment_daye,
                        :on_time
end
