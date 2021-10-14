# frozen_string_literal: true

class CreateFeatureToggles < ActiveRecord::Migration[6.1]
  def change
    create_table :feature_toggles do |t|
      t.string :name

      t.timestamps
    end
  end
end
