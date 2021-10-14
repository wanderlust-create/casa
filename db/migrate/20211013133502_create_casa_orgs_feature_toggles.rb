# frozen_string_literal: true

class CreateCasaOrgsFeatureToggles < ActiveRecord::Migration[6.1]
  def change
    create_table :casa_orgs_feature_toggles do |t|
      t.references :casa_org
      t.references :feature_toggle
      t.boolean :enabled, default: false

      t.timestamps
    end
  end
end
