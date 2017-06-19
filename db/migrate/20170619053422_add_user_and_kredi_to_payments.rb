class AddUserAndKrediToPayments < ActiveRecord::Migration[5.0]
  def change
    add_reference :payments, :user, foreign_key: true
    add_reference :payments, :kredi, foreign_key: true
  end
end
