class FixColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :kredis, :adequate_amout, :adequate_amount
    rename_column :kredis, :bank_arrearsm, :bank_arrears
    rename_column :payments, :estimated_payment_daye, :estimated_payment_date
  end
end
