data:extend(
{
  {
    type = "recipe",
    name = "bugoga",
    --icon = "__base__/graphics/icons/iron-plate.png",
    category = "smelting",
    subgroup = "smelting-machine",
    enabled = true,
    energy_required = 30,
    main_product = "electric-furnace",
    ingredients = {{"steel-furnace", 10}},
    results =
    {
      {
        name="steel-furnace",
        amount=9,
      },
      {
        name="electric-furnace",
        amount=1,
        probability=0.05
      },
      {
        name="steel-furnace",
        amount=1,
        probability=0.95
      }
    },
    --  result_count = 2,
  }
}
)

data.raw.furnace["electric-furnace"].result_inventory_size = 3
