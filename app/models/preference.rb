class Preference < ActiveRecord::Base
  validates :artist_sort_order, inclusion: { in: %w(asc desc ASC DESC)}
  validate :only_one_preference_object, :on => :create

  def only_one_preference_object
    if Preference.all.count >= 1
      errors.add(:base, "Exceeded preferences limit")
    end
  end
end
