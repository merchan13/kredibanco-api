class AddRequestToKredis < ActiveRecord::Migration[5.0]
  def change
    add_reference :kredis, :kredi_request, foreign_key: true
  end
end
