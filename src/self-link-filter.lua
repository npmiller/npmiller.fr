-- Add self-referential links around headers
function Header (h)
    h.content = pandoc.Link(h.content, '#' .. h.identifier)
  return h
end
