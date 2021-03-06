/c local map={}

local text = {
#TEXT#
}

local data = {
#DATA#
}

local reference = {
#REFERENCE#
}

local signal_table = {
	{type="item", name="wooden-chest"}, {type="item", name="iron-chest"}, {type="item", name="steel-chest"}, {type="item", name="storage-tank"}, {type="item", name="transport-belt"}, {type="item", name="fast-transport-belt"}, {type="item", name="express-transport-belt"}, {type="item", name="underground-belt"}, {type="item", name="fast-underground-belt"}, {type="item", name="express-underground-belt"}, {type="item", name="splitter"}, {type="item", name="fast-splitter"}, {type="item", name="express-splitter"}, {type="item", name="burner-inserter"}, {type="item", name="inserter"}, {type="item", name="long-handed-inserter"}, {type="item", name="fast-inserter"}, {type="item", name="filter-inserter"}, {type="item", name="stack-inserter"}, {type="item", name="stack-filter-inserter"}, {type="item", name="small-electric-pole"}, {type="item", name="medium-electric-pole"}, {type="item", name="big-electric-pole"}, {type="item", name="substation"}, {type="item", name="pipe"}, {type="item", name="pipe-to-ground"}, {type="item", name="pump"}, {type="item", name="rail"}, {type="item", name="train-stop"}, {type="item", name="rail-signal"}, {type="item", name="rail-chain-signal"}, {type="item", name="locomotive"}, {type="item", name="cargo-wagon"}, {type="item", name="fluid-wagon"}, {type="item", name="artillery-wagon"}, {type="item", name="car"}, {type="item", name="tank"}, {type="item", name="spidertron"}, {type="item", name="spidertron-remote"}, {type="item", name="logistic-robot"}, {type="item", name="construction-robot"}, {type="item", name="logistic-chest-active-provider"}, {type="item", name="logistic-chest-passive-provider"}, {type="item", name="logistic-chest-storage"}, {type="item", name="logistic-chest-buffer"}, {type="item", name="logistic-chest-requester"}, {type="item", name="roboport"}, {type="item", name="small-lamp"}, {type="item", name="red-wire"}, {type="item", name="green-wire"}, {type="item", name="arithmetic-combinator"}, {type="item", name="decider-combinator"}, {type="item", name="constant-combinator"}, {type="item", name="power-switch"}, {type="item", name="programmable-speaker"}, {type="item", name="stone-brick"}, {type="item", name="concrete"}, {type="item", name="hazard-concrete"}, {type="item", name="refined-concrete"}, {type="item", name="refined-hazard-concrete"}, {type="item", name="landfill"}, {type="item", name="cliff-explosives"}, {type="item", name="repair-pack"}, {type="item", name="blueprint"}, {type="item", name="deconstruction-planner"}, {type="item", name="upgrade-planner"}, {type="item", name="blueprint-book"}, {type="item", name="boiler"}, {type="item", name="steam-engine"}, {type="item", name="solar-panel"}, {type="item", name="accumulator"}, {type="item", name="nuclear-reactor"}, {type="item", name="heat-pipe"}, {type="item", name="heat-exchanger"}, {type="item", name="steam-turbine"}, {type="item", name="burner-mining-drill"}, {type="item", name="electric-mining-drill"}, {type="item", name="offshore-pump"}, {type="item", name="pumpjack"}, {type="item", name="stone-furnace"}, {type="item", name="steel-furnace"}, {type="item", name="electric-furnace"}, {type="item", name="assembling-machine-1"}, {type="item", name="assembling-machine-2"}, {type="item", name="assembling-machine-3"}, {type="item", name="oil-refinery"}, {type="item", name="chemical-plant"}, {type="item", name="centrifuge"}, {type="item", name="lab"}, {type="item", name="beacon"}, {type="item", name="speed-module"}, {type="item", name="speed-module-2"}, {type="item", name="speed-module-3"}, {type="item", name="effectivity-module"}, {type="item", name="effectivity-module-2"}, {type="item", name="effectivity-module-3"}, {type="item", name="productivity-module"}, {type="item", name="productivity-module-2"}, {type="item", name="productivity-module-3"}, {type="item", name="wood"}, {type="item", name="coal"}, {type="item", name="stone"}, {type="item", name="iron-ore"}, {type="item", name="copper-ore"}, {type="item", name="uranium-ore"}, {type="item", name="raw-fish"}, {type="item", name="iron-plate"}, {type="item", name="copper-plate"}, {type="item", name="solid-fuel"}, {type="item", name="steel-plate"}, {type="item", name="plastic-bar"}, {type="item", name="sulfur"}, {type="item", name="battery"}, {type="item", name="explosives"}, {type="item", name="crude-oil-barrel"}, {type="item", name="heavy-oil-barrel"}, {type="item", name="light-oil-barrel"}, {type="item", name="lubricant-barrel"}, {type="item", name="petroleum-gas-barrel"}, {type="item", name="sulfuric-acid-barrel"}, {type="item", name="water-barrel"}, {type="item", name="copper-cable"}, {type="item", name="iron-stick"}, {type="item", name="iron-gear-wheel"}, {type="item", name="empty-barrel"}, {type="item", name="electronic-circuit"}, {type="item", name="advanced-circuit"}, {type="item", name="processing-unit"}, {type="item", name="engine-unit"}, {type="item", name="electric-engine-unit"}, {type="item", name="flying-robot-frame"}, {type="item", name="satellite"}, {type="item", name="rocket-control-unit"}, {type="item", name="low-density-structure"}, {type="item", name="rocket-fuel"}, {type="item", name="nuclear-fuel"}, {type="item", name="uranium-235"}, {type="item", name="uranium-238"}, {type="item", name="uranium-fuel-cell"}, {type="item", name="used-up-uranium-fuel-cell"}, {type="item", name="automation-science-pack"}, {type="item", name="logistic-science-pack"}, {type="item", name="military-science-pack"}, {type="item", name="chemical-science-pack"}, {type="item", name="production-science-pack"}, {type="item", name="utility-science-pack"}, {type="item", name="space-science-pack"}, {type="item", name="pistol"}, {type="item", name="submachine-gun"}, {type="item", name="shotgun"}, {type="item", name="combat-shotgun"}, {type="item", name="rocket-launcher"}, {type="item", name="flamethrower"}, {type="item", name="land-mine"}, {type="item", name="firearm-magazine"}, {type="item", name="piercing-rounds-magazine"}, {type="item", name="uranium-rounds-magazine"}, {type="item", name="shotgun-shell"}, {type="item", name="piercing-shotgun-shell"}, {type="item", name="cannon-shell"}, {type="item", name="explosive-cannon-shell"}, {type="item", name="uranium-cannon-shell"}, {type="item", name="explosive-uranium-cannon-shell"}, {type="item", name="artillery-shell"}, {type="item", name="rocket"}, {type="item", name="explosive-rocket"}, {type="item", name="atomic-bomb"}, {type="item", name="flamethrower-ammo"}, {type="item", name="grenade"}, {type="item", name="cluster-grenade"}, {type="item", name="poison-capsule"}, {type="item", name="slowdown-capsule"}, {type="item", name="defender-capsule"}, {type="item", name="distractor-capsule"}, {type="item", name="destroyer-capsule"}, {type="item", name="light-armor"}, {type="item", name="heavy-armor"}, {type="item", name="modular-armor"}, {type="item", name="power-armor"}, {type="item", name="power-armor-mk2"}, {type="item", name="solar-panel-equipment"}, {type="item", name="fusion-reactor-equipment"}, {type="item", name="battery-equipment"}, {type="item", name="battery-mk2-equipment"}, {type="item", name="belt-immunity-equipment"}, {type="item", name="exoskeleton-equipment"}, {type="item", name="personal-roboport-equipment"}, {type="item", name="personal-roboport-mk2-equipment"}, {type="item", name="night-vision-equipment"}, {type="item", name="energy-shield-equipment"}, {type="item", name="energy-shield-mk2-equipment"}, {type="item", name="personal-laser-defense-equipment"}, {type="item", name="discharge-defense-equipment"}, {type="item", name="discharge-defense-remote"}, {type="item", name="stone-wall"}, {type="item", name="gate"}, {type="item", name="gun-turret"}, {type="item", name="laser-turret"}, {type="item", name="flamethrower-turret"}, {type="item", name="artillery-turret"}, {type="item", name="artillery-targeting-remote"}, {type="item", name="radar"}, {type="item", name="rocket-silo"}, {type="fluid", name="water"}, {type="fluid", name="crude-oil"}, {type="fluid", name="steam"}, {type="fluid", name="heavy-oil"}, {type="fluid", name="light-oil"}, {type="fluid", name="petroleum-gas"}, {type="fluid", name="sulfuric-acid"}, {type="fluid", name="lubricant"}, {type="virtual", name="signal-0"}, {type="virtual", name="signal-1"}, {type="virtual", name="signal-2"}, {type="virtual", name="signal-3"}, {type="virtual", name="signal-4"}, {type="virtual", name="signal-5"}, {type="virtual", name="signal-6"}, {type="virtual", name="signal-7"}, {type="virtual", name="signal-8"}, {type="virtual", name="signal-9"}, {type="virtual", name="signal-A"}, {type="virtual", name="signal-B"}, {type="virtual", name="signal-C"}, {type="virtual", name="signal-D"}, {type="virtual", name="signal-E"}, {type="virtual", name="signal-F"}, {type="virtual", name="signal-G"}, {type="virtual", name="signal-H"}, {type="virtual", name="signal-I"}, {type="virtual", name="signal-J"}, {type="virtual", name="signal-K"}, {type="virtual", name="signal-L"}, {type="virtual", name="signal-M"}, {type="virtual", name="signal-N"}, {type="virtual", name="signal-O"}, {type="virtual", name="signal-P"}, {type="virtual", name="signal-Q"}, {type="virtual", name="signal-R"}, {type="virtual", name="signal-S"}, {type="virtual", name="signal-T"}, {type="virtual", name="signal-U"}, {type="virtual", name="signal-V"}, {type="virtual", name="signal-W"}, {type="virtual", name="signal-X"}, {type="virtual", name="signal-Y"}, {type="virtual", name="signal-Z"}, {type="virtual", name="signal-red"}, {type="virtual", name="signal-green"}, {type="virtual", name="signal-blue"}, {type="virtual", name="signal-yellow"}, {type="virtual", name="signal-pink"}, {type="virtual", name="signal-cyan"}, {type="virtual", name="signal-white"}, {type="virtual", name="signal-grey"}, {type="virtual", name="signal-black"},
}

function to_int32(value)
	if value >= 2147483648 then
		return value - 2* 2147483648
	end
	return value
end

function frames_split(words)
	local frames_n = #words / 256
	if #words % 256 == 0 then
		frames_n = frames_n - 1
	end

	local frames = {}

	for n=0,frames_n do
		local frame = {}
		for i=1,256 do
			table.insert(frame, words[n*256+i])
		end
		table.insert(frames, frame)
	end
	return frames
end

function clear_cc(cc)
	for i=1,20 do
		cc.get_control_behavior().set_signal(i, nil)
	end
end

function find_cc(x_pos, y_pos)
	local cc = game.player.selected.surface.find_entity('constant-combinator', {x_pos, y_pos})
	if cc ~= nil then
		clear_cc(cc)
	end
	return cc
end

function create_cc(x_pos, y_pos, direction)
	return game.player.surface.create_entity({
        name = "constant-combinator",
        position = {x=x_pos, y=y_pos},
        direction = direction,
        force = game.forces.player})
end

function get_cc(x_pos, y_pos, direction)
	local cc = find_cc(x_pos, y_pos)
	if cc ~= nil then
		return cc
	end
	return create_cc(x_pos, y_pos, direction)
end

function set_signal(cc, idx, signal, count)
    cc.get_control_behavior().set_signal(idx, {signal=signal, count=count})
end

function encode_words(words, add_metadata, x_offset, y_offset)
	local start = game.player.selected
	local frames = frames_split(words)

	local x_pos = start.position.x + x_offset
	local y_pos = start.position.y + y_offset
    for f=1,#frames do

		if add_metadata then
			add_frame_metadata(frames[f+1], f, x_pos, y_pos+f)
		end
    	add_frame(frames[f], x_pos, y_pos+f)
    end

	local f = #frames + 1
	while clear_frame(x_pos, y_pos+f, add_metadata) do
		f = f + 1
	end
end

function add_frame(frame, x_pos, y_pos)
    local idx = 1
    for c = 1, 13 do
        local cc = get_cc(x_pos+c-1, y_pos)

        for s = 1, 20 do
            if frame[idx] ~= nil and frame[idx] ~= "0" then
                set_signal(cc, s, signal_table[idx], to_int32(tonumber(frame[idx],16)))
            end

            idx = idx + 1
			if idx > 256 then
				return
			end
        end
    end
end

function add_frame_metadata(next_frame, frame_number, x_pos, y_pos)
	local cc = get_cc(x_pos+13, y_pos, 6)

    if next_frame ~= nil and next_frame[1] ~= nil then
        set_signal(cc, 1, {type="item", name="rocket-part"}, to_int32(tonumber(next_frame[1],16)))
    end
    if next_frame ~= nil and next_frame[2] ~= nil then
        set_signal(cc, 2, {type="item", name="coin"}, to_int32(tonumber(next_frame[2],16)))
    end
    set_signal(cc, 3, {type="virtual", name="signal-info"}, 2080373760 - (frame_number-1)*1024)
end

function clear_frame(x_pos, y_pos, metadata)
	local cc = nil
    for c = 1, 13 do
        cc = find_cc(x_pos+c-1, y_pos)
    end
    if metadata then
        cc = find_cc(x_pos+13, y_pos)
    end
	return cc
end

encode_words(data, false, 0, 0)
game.print(".data: " .. tostring(#data*4) .. " bytes")

encode_words(text, true, 15, 0)
game.print(".text: " .. tostring(#text*4) .. " bytes")

encode_words(reference, false, -30, 1)
if #reference ~= 0 then
    game.print("reference: " .. tostring(#reference*4) .. " bytes")
end
