class CreateDepartues < ActiveRecord::Migration
  def change
    create_table :departues do |t|
      t.references :flight, index: true
      t.datetime :date
      t.integer :status

      t.timestamps
    end
  end
end
