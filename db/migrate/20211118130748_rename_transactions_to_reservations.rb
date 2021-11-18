class RenameTransactionsToReservations < ActiveRecord::Migration[6.1]
  def change
    rename_table :transactions, :reservations
  end
end
