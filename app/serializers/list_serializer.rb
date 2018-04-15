class ListSerializer < ActiveModel::Serializer
  attributes :user_id, :id, :name, :private
end
