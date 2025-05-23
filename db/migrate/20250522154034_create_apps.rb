class CreateApps < ActiveRecord::Migration[8.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :description
      t.string :color
      t.boolean :default_status
      t.string :link

      t.timestamps
    end
  end
end
