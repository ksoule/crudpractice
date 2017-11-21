class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.string :size
      t.string :description

      t.timestamps
    end
  end
end
