FactoryBot.define do
  factory :casa_orgs_feature_toggle do
    casa_org
    feature_toggle
    enabled { false }
  end
end
