defmodule OpenPantry.ExAdmin.UserFoodPackage do
  use ExAdmin.Register
  alias OpenPantry.Repo
  register_resource OpenPantry.UserFoodPackage do

  end

  def display_name(user_food_package) do
    Repo.preload(user_food_package, :user).user.name <>
    " " <>
    (NaiveDateTime.to_date(user_food_package.inserted_at)
     |> Date.to_string
    )
  end

end
