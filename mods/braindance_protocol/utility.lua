local Utilities = {}

function Utilities.StartProtocol(name)
    print(string.format("Executing Protocol: %s", name))
end

function Utilities.FinishProtocol(name)
    print(string.format("Finished Protocol: %s", name))
end

function Utilities.DumpObject(obj, path)
	local dump = tostring(Dump(obj))
	local output = io.open(path or "output.txt", "w")

	print(dump)

	output:write(dump)
	output:close()
end

return Utilities
