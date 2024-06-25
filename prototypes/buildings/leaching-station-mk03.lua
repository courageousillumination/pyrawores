RECIPE {
    type = "recipe",
    name = "leaching-station-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"leaching-station-mk02", 1},
        {"storage-tank", 3},
        {"duralumin", 15},
        {"lead-plate", 10},
        {"nexelit-plate", 15},
        {"electric-engine-unit", 4},
        {"processing-unit", 10},
    },
    results = {
        {"leaching-station-mk03", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "leaching-station-mk03",
    icon = "__pyraworesgraphics__/graphics/icons/leaching-station-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk03",
    order = "g",
    place_result = "leaching-station-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "leaching-station-mk03",
    icon = "__pyraworesgraphics__/graphics/icons/leaching-station-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "leaching-station-mk03"},
    fast_replaceable_group = "leaching-station",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"leaching"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "600kW",
    animation = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/leaching-station/off-mk03.png",
                width = 224,
                height = 233,
                frame_count = 1,
                shift = util.by_pixel(0, -5)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, -5),
            west_position = util.by_pixel(0, -5),
            south_position = util.by_pixel(0, -5),
            east_position = util.by_pixel(0, -5),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/leaching-station/on-mk03.png",
                --priority = "extra-high",
                frame_count = 1,
                width = 224,
                height = 233,
                --animation_speed = 0.4
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, -2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.0, 2.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/leaching-station.ogg", volume = 0.8},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/leaching-station.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
