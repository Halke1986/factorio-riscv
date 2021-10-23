/c local map={}

local font = {
{"420","c3a9003c","83ff06d2","10b5011c","808430","3010038","207604ec","7c020d1a","a319866c","850008","410400","13702c18","837bad72","42942e18","110400","1410008","20018468","7c861d18","23780668","10038","8430","496f1018","81ef4652","12170138","40460",},
{"13f57974","2c1f82ff","6c1f86ff","2c1f8eff","3f865e8","eff9fe","5b006000","100a00","67002400","e7e117","e7f9fe","80d0967","179d6367","200d05e6","e2e193","a7fdff","d400000","2940a01","31424400","a8e197","810d7976","acaa96bd","ae7a96bd","acac9abd","910261aa",},
{"4","20000900","10001281","80004d0","0","802004","43756986","3c1bd06e","475e209b","a00000","40802006","a67c978","699c33d0","2643cdf6","a02000","802016","65cd28","3f931a60","4ac496","a02100","2004","23854996","146896fe","dba4838","2102",},
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
