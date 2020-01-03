class Exhibit < ApplicationRecord

  validates :comment, {length: {maximum: 200}}
  validates :name, {presence: true}
end
