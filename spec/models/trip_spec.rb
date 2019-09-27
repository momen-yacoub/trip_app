require 'rails_helper'

RSpec.describe Driver, type: :model do
  describe Drvier do
    context 'Associations' do
      it { should have_one(:driver) }
      it { should have_one(:source) }
      it { should have_one(:destination) }
      it { should have_one(:last_location) }
    end

    context 'Validations' do
      it { should validate_presence_of(:name, :driver_id, :state, :source_id, :destination_id, :seats, :price)}
    end
  end
end
