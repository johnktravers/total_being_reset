require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :full_name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :role }

    it { should validate_uniqueness_of :email }
    it { should allow_value('user@example.com').for(:email) }
    it { should_not allow_value('user.example.com').for(:email) }

    it { should validate_inclusion_of(:role).in_range(0..1) }
  end

  describe 'relationships' do
    it { should have_many :promis_scores }
  end
end
