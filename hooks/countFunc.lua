-- @description - try create function to use spread like in js 
function set(...)
    local ret = {}
    for _,k in ipairs({...}) do ret[k] = true end
    return ret
 end