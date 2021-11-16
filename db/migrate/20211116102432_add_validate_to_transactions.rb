class AddValidateToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :validate, :boolean, :default => false
  end
end
