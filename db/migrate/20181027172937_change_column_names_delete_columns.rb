class ChangeColumnNamesDeleteColumns < ActiveRecord::Migration
  def change
		remove_column :preferences, :song_sort_asc		
		remove_column :preferences, :artist_sort_asc		

		add_column :preferences, :artist_sort_order, :string, :default => 'ASC'
		add_column :preferences, :song_sort_order, :string, :default => 'ASC'
  end
end
