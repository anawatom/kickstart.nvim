-- Neo-tree on the right, showing hidden/ignored files and following the current file.
-- Re-runs setup() over lua/kickstart/plugins/neo-tree.lua, so it repeats upstream's '\' mapping.
require('neo-tree').setup {
  window = { position = 'right' },
  filesystem = {
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
    },
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true,
    },
  },
}
