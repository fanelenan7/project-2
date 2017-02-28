class AddAlbumsToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_reference :submissions, :album, foreign_key: true
  end
end
