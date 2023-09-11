-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>a"] = { name = "Colorcolumn" },
    ["<leader>i"] = { name = "CursorPos" },

    ["<leader>aa"] = { ":set colorcolumn=90<cr>", desc = "set columnwidth to 90" },
    ["<leader>ax"] = { ":set cc=<cr>", desc = "disable colorcolumn" },

    ["<leader>im"] = { ":set so=999<cr>", desc = "set cursor to the middle" },
    ["<leader>id"] = { ":set so=15<cr>", desc = "set default cursor" },
    ["<leader>iz"] = { ":ser so=0<cr>", desc = "disable cursor position" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<S-Tab>"] = { ":bprev<cr>", desc = "goto previsou tab" },
    ["<Tab>"] = { ":bnext<cr>", desc = "goto next tab" },
    ["<A-h>"] = { ":RustHoverActions<cr>", desc = "rust hover action" },
    ["<C-a>"] = { "<ESC>^" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-a>"] = { "<ESC>I" },
    ["<C-e>"] = { "<ESC>A" },

  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  }
}
