class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.integer :size
      t.string :description
      t.string :name
      t.timestamps
    end
  end
end
