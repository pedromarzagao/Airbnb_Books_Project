class ChangeDataTypeForSummary < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :summary, :text
  end
end
