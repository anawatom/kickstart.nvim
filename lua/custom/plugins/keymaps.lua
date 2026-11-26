-- Search files including hidden ones (overrides upstream's <leader>sf)
vim.keymap.set('n', '<leader>sf', function()
  require('telescope.builtin').find_files { hidden = true }
end, { desc = '[S]earch [F]iles' })
