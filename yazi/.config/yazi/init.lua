function Linemode:file_info()
  return string.format("%s %7s %14s", self:permissions(), self:size(), self:mtime())
end

require("fr"):setup({
  fzf = "--no-scrollbar --prompt='> ' --preview-window='right,50%'",
})
require("no-status"):setup()
require("relative-motions"):setup({
  show_numbers="relative_absolute",
  show_motion = true,
  only_motions = true,
  enter_mode ="first"
})

-- require("current-size"):setup({
--     equal_ignore = {"~","/","/home"}, -- full path match
-- 	-- sub_ignore = {"~/deskenv/master","~/deskenv/dev"} -- sub path match
-- })

-- require("git"):setup()
