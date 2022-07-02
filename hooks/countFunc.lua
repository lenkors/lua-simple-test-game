function set(...)
    local ret = {}
    for _,k in ipairs({...}) do ret[k] = true end
    return ret
 end