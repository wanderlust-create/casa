# frozen_string_literal: true

class FeatureToggle < ApplicationRecord
  has_many :casa_orgs_feature_toggles, dependent: :destroy
  has_many :casa_orgs, -> { CasaOrgsFeatureToggle.enabled }, through: :casa_orgs_feature_toggles

  def enabled_for?(casa_org)
    casa_orgs.include? casa_org
  end

  def enable_for!(casa_org)
    casa_orgs_feature_toggles.where(casa_org: casa_org).update(enabled: true)
  end

  def disable_for!(casa_org)
    casa_orgs_feature_toggles.where(casa_org: casa_org).update(enabled: false)
  end
end

# == Schema Information
#
# Table name: feature_toggles
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
