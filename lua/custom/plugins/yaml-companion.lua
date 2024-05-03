return {
  {
    'someone-stole-my-name/yaml-companion.nvim',
    ft = {
      'yaml',
      'yml',
    },
    opts = {
      builtins_matchers = {
        kubernetes = { enabled = true },
        cloud_init = { enabled = true },
        helm = { enabled = true },
      },
    },
    dependencies = {
      { 'neovim/nvim-lspconfig' },
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope.nvim' },
    },
    config = function(_, opts)
      local cfg = require('yaml-companion').setup(opts)
      require('lspconfig')['yamlls'].setup(cfg)
      require('telescope').load_extension 'yaml_schema'
    end,
  },
}
