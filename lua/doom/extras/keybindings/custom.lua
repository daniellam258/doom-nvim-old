local mappings = require("doom.utils.mappings")

-- Additional options for mappings
local opts = { silent = true }
local lsp_opts = vim.tbl_extend("force", opts, { expr = true })


-- custom mapping
mappings.map(
  "n",
  "<leader>op",
  "<cmd>lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>",
  opts,
  "Project",
  "open_projects",
  "Open projects"
)
mappings.map(
  "n",
  "<leader>cls",
  "<cmd>Lspsaga signature_help<CR>",
  opts,
  "Lsp",
  "lsp_signature",
  "Lsp signature help"
)
mappings.map("n", "gs", "<leader>cls", opts, "Lsp", "lsp_signature_2", "Lsp signature help")
mappings.map("n", "<leader>clp", "<cmd>Lspsaga preview_definition<CR>", opts, "Lsp", "lsp_preview_definition", "Lsp preview definition")
mappings.map("n", "gp", "<leader>clp", opts, "Lsp", "lsp_preview_definition_1", "Lsp preview definition")
mappings.map("n", "<leader>clf","<cmd>lua vim.lsp.buf.formatting()<CR>", opts, "Lsp", "lsp_format", "Lsp format")
mappings.map("n", "ff","<cmd>lua vim.lsp.buf.formatting()<CR>", opts, "Lsp", "lsp_format_1", "Lsp format")