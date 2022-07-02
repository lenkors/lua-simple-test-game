Player = {}

function Player:new(fname, lname)
    local obj = {
        firstName = fname,
        lastName = lname
    }

    function obj:setSave (data)
        local dataToWrite = { player = obj, data = data}
        love.filesystem.write("_player/savegame.json", serialize(dataToWrite))
    end

    function obj:getName()
        return self.firstName..self.lastName 
    end

    setmetatable(obj, self)
    self.__index = self; return obj
end