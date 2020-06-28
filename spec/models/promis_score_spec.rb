require 'rails_helper'

RSpec.describe PromisScore, type: :model do
  describe 'validations' do
    it { should validate_presence_of :global_physical }
    it { should validate_presence_of :global_mental }
    it { should validate_presence_of :general_health }
    it { should validate_presence_of :social }

    physical_options = [16.2, 19.9, 23.5, 26.7, 29.6, 32.4, 34.9, 37.4, 39.8, 42.3, 44.9, 47.7, 50.8, 54.1, 57.7, 61.9, 67.7]
    mental_options =   [21.2, 25.1, 28.4, 31.3, 33.8, 36.3, 38.8, 41.1, 43.5, 45.8, 48.3, 50.8, 53.3, 56.0, 59.0, 62.5, 67.6]

    it { should validate_inclusion_of(:global_physical).in_array(physical_options) }
    it { should validate_inclusion_of(:global_mental).in_array(mental_options) }
    it { should validate_inclusion_of(:general_health).in_range(1..5) }
    it { should validate_inclusion_of(:social).in_range(1..5) }
  end

  describe 'relationships' do
    it { should belong_to :user }
  end
end
