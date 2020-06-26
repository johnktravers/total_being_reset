require 'rails_helper'

RSpec.describe Video, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :thumbnail }
    it { should validate_presence_of :youtube_id }
    it { should validate_presence_of :type }

    it { should validate_uniqueness_of :title }
    it { should validate_uniqueness_of :youtube_id }

    it { should validate_inclusion_of(:type).in_range(0..1) }
  end
end
