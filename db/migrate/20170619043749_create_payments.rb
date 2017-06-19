class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.float     :amount,                  null: false
      t.boolean   :completed,               null: false
      t.date      :estimated_payment_daye,  null: false
      t.boolean   :on_time,                 null: false

      t.timestamps
    end
  end
end
