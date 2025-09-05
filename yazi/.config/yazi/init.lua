function Linemode:file_info()
  return string.format("%s %7s %14s", self:permissions(), self:size(), self:mtime())
end

-- require("current-size"):setup({
--     equal_ignore = {"~","/","/home"}, -- full path match
-- 	-- sub_ignore = {"~/deskenv/master","~/deskenv/dev"} -- sub path match
-- })
-- 
require("fg"):setup({
    default_action = "menu", -- nvim, jump
})
