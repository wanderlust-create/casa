class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.boolean :enabled
      t.timestamps
    end
  end
end
