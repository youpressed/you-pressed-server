class EdgeResource < JSONAPI::Resource
  attribute :quantity
  relationship :parent, to: :one
  relationship :child, to: :one
end
