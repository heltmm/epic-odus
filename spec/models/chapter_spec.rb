require 'rails_helper'

describe Chapter do
  it { should have_many :sections}
  # it { should have_many :lessons through: :sections }
  it { should validate_presence_of :title }
end
