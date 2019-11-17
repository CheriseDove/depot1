class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  validates :pay_type, inclusion: pay_type.keys
  belongs_to :line_items

  enum pay_type: {
  "Cheque" => 0,
  "Credit Card" => 1,
  "Purchase Order" => 2
  }

end
