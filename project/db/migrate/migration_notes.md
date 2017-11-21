be rake generate:migration NAME=create***table***
creates the migration
fill out information for the migration as so:
def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :hashed_password

      t.timestamps
