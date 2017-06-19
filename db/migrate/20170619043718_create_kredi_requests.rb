class CreateKrediRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :kredi_requests do |t|
      t.boolean   :approved,          null: false
      t.date      :estimated_start,   null: false
      t.date      :estimated_end,     null: false
      t.integer   :amount,            null: false

      t.timestamps
    end
  end
end
