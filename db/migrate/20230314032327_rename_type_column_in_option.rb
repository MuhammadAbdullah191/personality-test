class RenameTypeColumnInOption < ActiveRecord::Migration[6.0]
  def change
    rename_column :options, :type, :option_type
  end
end
