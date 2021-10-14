# frozen_string_literal: true

class AddVolunteerOtherExpensesFeatureToggle < ActiveRecord::Migration[6.1]
  def up
    ft = FeatureToggle.create(name: "other expenses for volunteers")
    CasaOrg.all.each do |org|
      ft.casa_orgs << [org]
    end
  end

  def down
    FeatureToggle.find_by(name: "other expenses for volunteers").destroy
  end
end
