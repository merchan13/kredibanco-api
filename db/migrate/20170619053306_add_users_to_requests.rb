class AddUsersToRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :kredi_requests, :user, foreign_key: true
    add_reference :kredi_requests, :admin, foreign_key: true
  end
end
