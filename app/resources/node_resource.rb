class NodeResource < JSONAPI::Resource
  attribute :label

  relationship :children, to: :many
  relationship :parents, to: :many
end
