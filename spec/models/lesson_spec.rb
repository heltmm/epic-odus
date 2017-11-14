require 'rails_helper'

describe Lesson do
  it { should belong_to :section }
  it { should validate_presence_of :title }
  it { should validate_presence_of :order }
end
