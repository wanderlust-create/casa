class Address < ApplicationRecord
  belongs_to :user
  end

# == Schema Information
#
# Table name: addresses
#
#  id             :bigint           not null, primary key
#  city           :string
#  state          :string
#  street_address :string
#  unit           :string
#  zip            :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_addresses_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
