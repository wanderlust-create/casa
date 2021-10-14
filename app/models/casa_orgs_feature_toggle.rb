# frozen_string_literal: true

class CasaOrgsFeatureToggle < ApplicationRecord
  belongs_to :casa_org
  belongs_to :feature_toggle

  scope :enabled, -> { where(enabled: true) }
end

# == Schema Information
#
# Table name: casa_orgs_feature_toggles
#
#  id                :bigint           not null, primary key
#  enabled           :boolean          default(FALSE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  casa_org_id       :bigint
#  feature_toggle_id :bigint
#
# Indexes
#
#  index_casa_orgs_feature_toggles_on_casa_org_id        (casa_org_id)
#  index_casa_orgs_feature_toggles_on_feature_toggle_id  (feature_toggle_id)
#
