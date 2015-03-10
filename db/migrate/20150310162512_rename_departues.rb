class RenameDepartues < ActiveRecord::Migration
  def change
  	rename_table :departues, :departures
  end
end
