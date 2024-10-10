return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup {
            --      on_attach = my_on_attach,
            sort = {
                sorter = 'case_sensitive',
            },
            view = {
                width = 30,
                side = 'right',
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
                custom = { '^.git$' },
            },
        }
    end,
}
