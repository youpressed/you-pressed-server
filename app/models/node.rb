class Node < ApplicationRecord

  has_many :children, class_name: "Edge", :dependent => :destroy, autosave: true, foreign_key: "parent_id"
  has_many :parents, class_name: "Edge", :dependent => :destroy, autosave: true, foreign_key: "child_id"
end
