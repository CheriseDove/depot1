class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :line_items

  enum pay_type: {
  "Cheque" => 0,
  "Credit Card" => 1,
  "Purchase Order" => 2
  }

end
