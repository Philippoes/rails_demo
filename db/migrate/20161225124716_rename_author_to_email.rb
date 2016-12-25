class RenameAuthorToEmail < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :author, :email
  end
end
