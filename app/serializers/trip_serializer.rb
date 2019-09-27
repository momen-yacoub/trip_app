class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :driver_id, :status, :source_id, :destination_id, :seats, :price, :deleted_at
end
