module ApplicationHelper
  def list_order (lists)
    if Preference.all.size > 0
      sort_order = ""
      if lists.first.instance_of?(Artist)
          sort_order = Preference.first.artist_sort_order
          lists.order(name: sort_order)
      elsif lists.first.instance_of?(Song)
          sort_order = Preference.first.song_sort_order
          lists.order(title: sort_order)
      end
    else
      lists
    end

  end

end
