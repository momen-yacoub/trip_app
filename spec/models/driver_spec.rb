require 'rails_helper'

RSpec.describe Driver, type: :model do
  describe Drvier do
    context 'Associations' do
      it { should have_many(:trips) }
    end
  end
end
