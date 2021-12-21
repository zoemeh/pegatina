class CreatePastes < ActiveRecord::Migration[7.0]
  def change
    create_table :pastes do |t|
      t.text :body

      t.timestamps
    end
  end
end
