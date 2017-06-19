class CreateKredis < ActiveRecord::Migration[5.0]
  def change
    create_table :kredis do |t|
      t.boolean   :active,            null: false
      t.boolean   :finished,          null: false
      t.date      :kredi_start,       null: false
      t.date      :kredi_end,         null: false
      t.float     :annual_interest,   null: false
      t.integer   :payments,          null: false
      t.float     :payments_amount,   null: false
      t.float     :adequate_amout,    null: false
      t.float     :final_amount,      null: false
      t.boolean   :bank_arrearsm,     null: false

      t.timestamps
    end
  end
end
