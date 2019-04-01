class PaintingsSerializer < AciveModel::Serializer
  attributes :id, :image, :title, :author, :date
end
