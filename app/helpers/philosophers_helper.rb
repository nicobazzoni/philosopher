module PhilosophersHelper

    def toggle_favorite(philosopher)
      # If the task has been favorited...
      if philosopher.favorite
        # Show the ★ and link to "unfavorite" it
        link_to raw("<i class='fa fa-star favorite'></i>"), favorite_path(philosopher), method: :delete
      else
        # Show the ☆ and link to "favorite" it
        link_to raw("<i class='far fa-star'></i>"), favorites_path(id: philosopher.id), method: :post
      end
    end
  end