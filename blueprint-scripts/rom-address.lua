/c local map={}

function generate_rom_address_offset()
	local start = game.player.selected

	local cc = {}

	for i=1,223,1 do

        cc = game.player.surface.create_entity({
            name = "constant-combinator",
            position = {x=start.position.x + 2, y=start.position.y + i - 1},
            direction = 6,
            force = game.forces.player})

        cc.get_control_behavior().set_signal(1, {signal={type="virtual", name="signal-info"}, count=2080373760 - (i-1) * 1024})
	end

end

generate_rom_address_offset()