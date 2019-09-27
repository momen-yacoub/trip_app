require 'rails_helper'

RSpec.describe Place, type: :model do
  describe Place do
    context 'Associations' do
      it { should have_many(:trips) }
    end

    context 'Validations' do
      it { should validate_presence_of(:longitude)}
      it { should validate_presence_of(:latitude)}
    end
  end
end
