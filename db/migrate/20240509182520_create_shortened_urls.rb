class CreateShortenedUrls < ActiveRecord::Migration[7.1]
  def change
    create_table :shortened_urls do |t|
      t.string :original_url
      t.string :short_code

      t.timestamps
    end
  end
end
