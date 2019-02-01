class ChangeYourColumnToBigint < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :phone, :bigint
  end
end
