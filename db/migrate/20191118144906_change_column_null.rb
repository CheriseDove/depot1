class ChangeColumnNull < ActiveRecord::Migration[6.0]
  def up
  	change_column_null :line_items, :product_id, true
  	change_column_null :line_items, :cart_id, true
  end
  def down
  	change_column_null :line_items, :product_id, false
  	change_column_null :line_items, :cart_id, false
  end
end
