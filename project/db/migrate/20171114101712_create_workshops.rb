class CreateWorkshops < ActiveRecord::Migration[5.1]
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :time
      t.string :notes

      t.string :timestamps
    end
  end
end
