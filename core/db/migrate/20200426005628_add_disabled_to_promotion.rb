class AddDisabledToPromotion < ActiveRecord::Migration[5.1]
  # This column is added to provide the ability to disable a promotion explicitly
  # without having to select a date. Allows for someone to configure a promotion
  # as desired without having it be accessible or leveraging the end date on creation.
  def change
    change_table :spree_promotions do |t|
      t.column :disabled, :boolean
    end
  end
end
