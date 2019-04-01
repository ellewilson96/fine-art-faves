class PaintingSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :author, :date
end
