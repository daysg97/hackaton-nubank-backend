class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end

    add_reference :users, :role, index: true
  end
end
