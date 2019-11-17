class AddOrderToLineItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :line_items, :order, foreign_key: true
    #change_reference_null :line_items, :order, false
    ##add_reference :line_items, :order, false
end
end
