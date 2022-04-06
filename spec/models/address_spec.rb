require 'rails_helper'

RSpec.describe Address, type: :model do
  subject { build(:address) }

  it { is_expected.to belong_to(:user) }

end
