-- Vue + TypeScript: vtsls with the Vue plugin, plus vue_ls
local vue_language_server_path = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules/@vue/language-server'

vim.lsp.config('vtsls', {
  settings = {
    vtsls = {
      autoUseWorkspaceTsdk = false,
      tsserver = {
        globalPlugins = {
          {
            name = '@vue/typescript-plugin',
            location = vue_language_server_path,
            languages = { 'vue' },
            configNamespace = 'typescript',
          },
        },
      },
    },
  },
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
})
vim.lsp.config('vue_ls', {})
vim.lsp.enable { 'vtsls', 'vue_ls' }
