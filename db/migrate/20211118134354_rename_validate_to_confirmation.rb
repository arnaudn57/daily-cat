class RenameValidateToConfirmation < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :validate, :confirmation
  end
end
