return function()
    local nvim_lsp = require("lspconfig")
    local lua_lsp = require("lua-dev").setup({
        lspconfig = {
            settings = {
                Lua = {
                    workspace = {
                        preloadFileSize = 200,
                    },
                },
            },
        },
    })

    -- https://github.com/kabouzeid/nvim-lspinstall#advanced-configuration-recommended
    local function setup_servers()
        -- Provide the missing :LspInstall
        require("lspinstall").setup()
        local servers = require("lspinstall").installed_servers()
        for _, server in pairs(servers) do
            -- Configure sumneko for neovim lua development
            if server == "lua" then
                nvim_lsp.lua.setup(lua_lsp)
            elseif server == "typescript" then
                nvim_lsp.tsserver.setup({
                    on_attach = function (client)
                        client.resolved_capabilities.document_formatting = false
                    end,
                })
            elseif server == "efm" then

                local formatter = {
                    formatCommand = "prettier_d_slim --stdin --stdin-filepath ${INPUT}",
                    formatStdin = true
                }
                local linter = {
                    lintCommand = "eslint_d -f visualstudio --stdin --stdin-filename ${INPUT}",
                    -- lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
                    lintIgnoreExitCode = true,
                    lintStdin = true,
                    lintFormats = {"%f(%l,%c): %tarning %m", "%f(%l,%c): %rror %m"},
                    formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
                    formatStdin = true
                }
                local languages = {
                    --lua = {luafmt},
                    typescript = {formatter, linter},
                    javascript = {formatter, linter},
                    typescriptreact = {formatter, linter},
                    ['typescript.tsx'] = {formatter, linter},
                    javascriptreact = {formatter, linter},
                    ['javascript.jsx'] = {formatter, linter},
                    vue = {formatter, linter},
                    yaml = {formatter},
                    json = {formatter},
                    html = {formatter},
                    scss = {formatter},
                    css = {formatter},
                    markdown = {formatter},
                }
                nvim_lsp.efm.setup({
                    filetypes = vim.tbl_keys(languages),
                    init_options = {
                        documentFormatting = true
                    },
                    settings = {
                        lintDebounce = 500,
                        languages = languages,
                    }
                })
            else
                -- Use default settings for all the other language servers
                nvim_lsp[server].setup({})
            end
        end
    end

    setup_servers()

    -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
    require("lspinstall").post_install_hook = function()
        setup_servers() -- reload installed servers
        vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
    end
end
