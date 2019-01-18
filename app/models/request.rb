class Request < ApplicationRecord
  belongs_to :requestor, class_name: "User", :foreign_key => :requestor_id
  belongs_to :requestee, class_name: "User", :foreign_key => :requestee_id
end
