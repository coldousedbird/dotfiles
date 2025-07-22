function Linemode:file_info()
  return string.format("%s %7s %14s", self:permissions(), self:size(), self:mtime())
end
