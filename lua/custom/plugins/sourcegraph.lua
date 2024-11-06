return {
    {
        "sourcegraph/sg.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            -- local node_executable
    
            -- if vim.uv.fs_stat "/home/thaodinh/.local/share/mise/installs/node/latest/bin/node" then
            -- node_executable = "/home/thaodinh/.local/share/mise/installs/node/latest/bin/node"
            -- elseif vim.fn.executable "node" == 1 then
            -- node_executable = "node"
            -- end
    
            require("sg").setup {
                accept_tos = true,
                enable_cody = true,
                download_binaries = true,
                --   node_executable = node_executable,
                chat = {
                    default_model = "opeanai/gpt-4o",
                },
                on_attach = true,
            }
        end,
    },
}