class Recipe < ApplicationRecord

  #we don't need an initialize method, it's inheriting that from ApplicationRecord

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%m/%d/%Y")
  end

  def friendly_prep_time
   hours = prep_time / 60
   minutes = prep_time % 60
   time_message = ""

   time_message += "#{hours} #{'hour'.pluralize(hours)}" if hours > 0
   time_message += ", " if hours > 0 && minutes > 0
   time_message += "#{minutes} #{'minute'.pluralize(minutes)}" if minutes > 0

   time_message
  end
end
