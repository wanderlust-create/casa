require 'rails_helper'

RSpec.describe CasaOrgsFeatureToggle, type: :model do
  it { is_expected.to belong_to(:casa_org) }
  it { is_expected.to belong_to(:feature_toggle) }
end
