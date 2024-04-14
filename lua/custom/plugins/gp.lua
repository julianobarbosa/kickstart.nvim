return {
  -- {{{ gp.nvim
  {
    'robitx/gp.nvim',
    config = function()
      require('gp').setup {
        cmd_prefix = 'Gp',
        openai_api_key = os.getenv 'OPENAI_API_KEY',
        openai_api_endpoint = os.getenv 'OPENAI_API_BASE_FULL',
      }
    end,
    cmd = {
      'GpChatNew',
      'GpRewrite',
      'GpAppend',
      'GpPrepend',
      'GpEnew',
      'GpPopup',
    },
    lazy = true,
  },
  -- }}}
}
