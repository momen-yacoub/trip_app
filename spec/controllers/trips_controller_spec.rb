require "rails_helper"

describe TripsController do
  let!(:trip){create(:trip)}
  let!(:trip_build){build(:trip)}

  context "GET show trip" do
    it "apply pass trip successfully" do
      get :show, {
        id: trip.id
      }
      expect(response).to be_success
    end
  end

  context "PUT update trip" do
    it "update trip successfully" do
      put :update, {
        id: trip.id,
        trip: {
          state: "completed"
        }
      }
      expect(response).to be_success
      trip.reload
      expect(trip.state).to eq('completed')
    end
  end

  context "POST create trip" do
    it "create trip successfully" do
      post :create, {
        trip: trip_build
      }
      expect(response).to be_success
      grading_system.reload
      expect(grading_system.academic_terms.count).to eq(2)
    end
  end

  context "DELETE destroy trip" do
    it "destroy trip successfully" do
      delete :destroy, {
        id: trip.id
      }
      expect(response).to be_success
      trip.reload
      expect(trip.deleted?).to eq(true)
    end
  end

end
