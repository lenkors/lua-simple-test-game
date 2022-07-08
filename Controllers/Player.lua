Player = {}
local serialize = require 'packages.serialize'

function Player:new(fname, lname)
    local obj = {
        firstName = fname,
        lastName = lname,
        saveInfo = '',
    }

    local filename = "save.lua"

    -- @description Save player data
    function obj:setSave ()
        local dataToWrite = {player = { obj.firstName, obj.lastName }, data = {score = score, BestScore = BestScore}}
        love.filesystem.write(filename, serialize(dataToWrite))
    end

    function obj:loadSave()
        local data = love.filesystem.read(filename)
        obj.saveInfo = data
    end

    function obj:getName()
        return self.firstName..self.lastName 
    end

    -- Магия блять, у меня нет других слов
    setmetatable(obj, self)
    self.__index = self; return obj
end