class Preference < ActiveRecord::Base
    after_initialize :init

    def init
        self.song_sort_order ||= "ASC"
        self.artist_sort_order ||= "ASC"
    end
end
