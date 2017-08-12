class Preference < ActiveRecord::Base
  validates :artist_sort_order, format: {with: /\A(ASC|DESC)\z/i, message: "may only be 'ASC' or 'DESC'"}
  validates :song_sort_order, format: {with: /\A(ASC|DESC)\z/i, message: "may only be 'ASC' or 'DESC'"}
end
