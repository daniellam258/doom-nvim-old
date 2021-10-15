return function()
  -- Signature help
  require("lsp_signature").setup({
    bind = true,
    handler_opts = {
      border = "single",
    },
  })
end
