class CreateUserApps < ActiveRecord::Migration[8.0]
  def change
    create_table :user_apps do |t|
      t.references :user, null: false, foreign_key: true
      t.references :app, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
