return {
  -- add symbols-outline
  {
    "tpope/vim-markdown",
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  {
    "christoomey/vim-tmux-runner",
  },
  -- {
  --   "aca/wezterm.nvim",
  -- },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "prettierd")
    end,
  },
  {
    "mechatroner/rainbow_csv",
  },
  {
    "edkolev/tmuxline.vim",
  },
  { "hashivim/vim-terraform" },
  { "othree/html5.vim" },
  { "pangloss/vim-javascript" },
  {
    "wuelnerdotexe/vim-astro",
  },
  -- {
  --   "stevearc/conform.nvim",
  --   opts = {
  --     formatters_by_ft = {
  --       ["javascript"] = { "prettier" },
  --       ["svelte"] = { "prettier" },
  --       ["javascriptreact"] = { "prettier" },
  --       ["typescript"] = { "prettier" },
  --       ["typescriptreact"] = { "prettier" },
  --       ["vue"] = { "prettier" },
  --       ["css"] = { "prettier" },
  --       ["scss"] = { "prettier" },
  --       ["less"] = { "prettier" },
  --       ["html"] = { "prettier" },
  --       ["json"] = { "fixjson" },
  --       ["jsonc"] = { "prettier" },
  --       ["yaml"] = { "prettier" },
  --       ["markdown"] = { "prettier" },
  --       ["markdown.mdx"] = { "prettier" },
  --       ["graphql"] = { "prettier" },
  --       ["handlebars"] = { "prettier" },
  --     },
  --   },
  -- },
  {
    "evanleck/vim-svelte",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "regex",
        "markdown",
        "svelte",
      })
    end,
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
