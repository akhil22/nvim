require("zen-mode").setup {
  window = {
    width = 140,  -- Adjust width for centering
    options = {}
  },
  plugins = {
    options = {
      enabled = true,
      ruler = false, -- Keep the ruler
      showcmd = false,
      laststatus = 3
    },
    twilight = { enabled = true }, -- Keep Twilight enabled
    gitsigns = { enabled = false }, -- Disable Git signs in Zen mode
    tmux = { enabled = false }, -- Prevents tmux status bar changes
    -- Keep Aerial visible
    aerial = { enabled = true }
  }
}
