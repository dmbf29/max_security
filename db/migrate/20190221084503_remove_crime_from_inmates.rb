class RemoveCrimeFromInmates < ActiveRecord::Migration[5.2]
  def change
    remove_column :inmates, :crime, :string
  end
end
