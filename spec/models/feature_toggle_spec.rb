require 'rails_helper'

RSpec.describe FeatureToggle, type: :model do
  it { is_expected.to have_many(:casa_cases_feature_toggles) }
end
