require('mason-tool-installer').setup {
  ensure_installed = {
    'bash-language-server',
    'lua-language-server',
    'dockerfile-language-server',
    'yaml-language-server',
    'cmake-language-server',
    'pyright',
    'json-lsp'
  },

  auto_update = true,
  run_on_start = false,
  start_delay = 1000,
}

vim.api.nvim_create_autocmd('User', {
  pattern = 'MasonToolsUpdateCompleted',
  callback = function()
    vim.schedule(function()
      print 'mason-tool-installer has finished'
    end)
  end,
})
