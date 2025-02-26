return {
  "nvim-neo-tree/neo-tree.nvim",
  -- opts = function(_, opts)
  --   table.insert(opts.window.mappings, { name = "emoji" })
  -- end,
  opts = {
    window = {
      mappings = {
        ["p"] = function(state)
          local node = state.tree:get_node()
          require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
        end,
      },
    },
  },
}
