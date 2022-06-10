local tree = {}
local view = require('nvim-tree.view')

tree.toggle = function()
    if view.is_visible() then
        view.close()
        require'bufferline.state'.set_offset(0)
    else
        require'bufferline.state'.set_offset(30, 'FileTree')
        require'nvim-tree'.find_file(true)
    end
end

return tree
