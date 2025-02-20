local function foo(t)
  local function traverse(t, path)
    for k, v in pairs(t) do
      local newPath = path .. "." .. k
      if type(v) == "table" then
        traverse(v, newPath)
      else
        print(newPath .. ": " .. v)
      end
    end
  end

traverse(t, "")
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)