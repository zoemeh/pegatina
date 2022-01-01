class AddExpirationDateToPastes < ActiveRecord::Migration[7.0]
  def change
    add_column :pastes, :expiration_date, :datetime
    add_column :pastes, :self_destruct, :boolean
  end
end
