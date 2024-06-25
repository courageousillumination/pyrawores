RECIPE {
    type = "recipe",
    name = "electrolyzer-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"electrolyzer-mk01", 1},
        {"duralumin", 20},
        {"engine-unit", 5},
        {"nexelit-plate", 15},
        {"advanced-circuit", 10},
    },
    results = {
        {"electrolyzer-mk02", 1}
    }
}:add_unlock("machines-mk03")

ITEM {
    type = "item",
    name = "electrolyzer-mk02",
    icon = "__pyraworesgraphics__/graphics/icons/electrolyzer-mk02.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk02",
    order = "d",
    place_result = "electrolyzer-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "electrolyzer-mk02",
    icon = "__pyraworesgraphics__/graphics/icons/electrolyzer-mk02.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "electrolyzer-mk02"},
    fast_replaceable_group = "electrolyzer",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"electrolyzer"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "30MW",
    animation = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/electrolyzer/off-mk02.png",
                width = 189,
                height = 192,
                frame_count = 1,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/electrolyzer/shadow.png",
                width = 29,
                height = 192,
                frame_count = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(94, 0)
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 3.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-14.5, -16),
            west_position = util.by_pixel(-14.5, -16),
            south_position = util.by_pixel(-14.5, -16),
            east_position = util.by_pixel(-14.5, -16),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/electrolyzer/on-mk02.png",
                priority = "high",
                frame_count = 60,
                line_length = 10,
                width = 160,
                height = 160,
                animation_speed = 1.5
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/electrolyzer.ogg", volume = 0.8},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/electrolyzer.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
