/c local map={}

local font = {
{"c3fd066c","83ef00d2","93fd851c","2373005c","7c020fda","a39d802c","13752c48","83feab72","437d2c58","21c58078","7c021b18","23790048","4bed9208","836f4052","137d0168",},
{"2ff57b74","6c1f82ff","2ff86fe8","5beff9ff","106200","67e7ed17","8e7f9ff","179d6be7","20e6e5f3","da7fdff","2d64200","31aaed96","ad8d7b76","ae7a96bd","ada67bab",},
{"20001905","78101200","48000450","47f16906","7c1ff1ff","7fe28b8","8efe9fc","7983ac2","26e3e5f6","4e5e93e","3ddb3a60","2eae596","278d7d86","3ef896fe","db2793a",},
}

local signal_table = {
    {type="virtual", name="signal-A"}, {type="virtual", name="signal-B"}, {type="virtual", name="signal-C"}, {type="virtual", name="signal-D"}, {type="virtual", name="signal-E"}, {type="virtual", name="signal-F"}, {type="virtual", name="signal-G"}, {type="virtual", name="signal-H"}, {type="virtual", name="signal-I"}, {type="virtual", name="signal-J"}, {type="virtual", name="signal-K"}, {type="virtual", name="signal-L"}, {type="virtual", name="signal-M"}, {type="virtual", name="signal-N"}, {type="virtual", name="signal-O"}, {type="virtual", name="signal-P"}, {type="virtual", name="signal-Q"}, {type="virtual", name="signal-R"}, {type="virtual", name="signal-S"}, {type="virtual", name="signal-T"}, {type="virtual", name="signal-U"}, {type="virtual", name="signal-V"}, {type="virtual", name="signal-W"}, {type="virtual", name="signal-X"}, {type="virtual", name="signal-Y"}, {type="virtual", name="signal-Z"}, {type="virtual", name="signal-red"}, {type="virtual", name="signal-green"}, {type="virtual", name="signal-blue"}, {type="virtual", name="signal-yellow"}, {type="virtual", name="signal-pink"}, {type="virtual", name="signal-cyan"}, {type="virtual", name="signal-white"}, {type="virtual", name="signal-grey"}, {type="virtual", name="signal-black"},
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

function create_cc(x_pos, y_pos, direction)
	return game.player.surface.create_entity({
        name = "constant-combinator",
        position = {x=x_pos, y=y_pos},
        direction = direction,
        force = game.forces.player})
end

function set_signal(cc, idx, signal, count)
    cc.get_control_behavior().set_signal(idx, {signal=signal, count=count})
end

function encode_words(words, x_offset, y_offset)
	local start = game.player.selected
	local frames = frames_split(words)

	local x_pos = start.position.x + x_offset
	local y_pos = start.position.y + y_offset
    for f=1,#frames do
    	add_frame(frames[f], x_pos, y_pos+f)
    end
end

function add_frame(frame, x_pos, y_pos)
    local idx = 1
    for c = 1, 13 do
        local cc = create_cc(x_pos+c-1, y_pos)

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

encode_words(font[1], 2, 0)
encode_words(font[2], 2, 1)
encode_words(font[3], 2, 2)
