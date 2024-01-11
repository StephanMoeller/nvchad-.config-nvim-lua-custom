local M = {}

-- test comment
M.disabled = {
    -- disable some default NVchad keybind we remapped, does not matter much but makes for a better cheat sheet
    n = {
        ["<leader>gt"] = "", -- rebound to <leader>gs
        ["<leader>cm"] = "", -- rebound to <leader>gc
        ["<leader>ls"] = "",
        ["<leader>lf"] = "",
    },
}

M.general = {
    n = {

        -- [";"] = { ":", "enter cmdline", opts = { nowait = true } },
        ["J"] = { "mzJ`z", "Join line with cursor in place" },
        ["Q"] = { "<nop>" },
        ["<leader>s"] = { ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>", "Replace word under cursor" },

        -- tmux navigation settings overwriting what nvchad overwrote from vim, going full circle here
        ["<C-Left>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
        ["<C-Right>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
        ["<C-Down>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
        ["<C-Up>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

        -- telescope bindings
        ["<leader>t"] = { "<cmd> Telescope builtin <CR>", "List telescope functions as fuzzy search" },
        ["<leader>ff"] = { "<cmd> Telescope find_files follow=true <CR>", "Find files" },
        ["<leader>fc"] = { "<cmd> Telescope commands <CR>", "Find in current buffer" },
        ["<leader>fn"] = { "<cmd> Telescope lsp_document_symbols ignore_symbols=variable <CR>", "Find in current buffer" },
        ["<leader>ft"] = { "<cmd> Telescope help_tags <CR>", "List help tags of nvim" },
        --["<leader>u"] = { "<cmd> Telescope undo <CR>", "Undotreee toggle" },
        ["<leader>u"] = { "<cmd> UndotreeToggle<CR>", "Undotree toggle" },
        ["<leader>gf"] = { "<cmd> Telescope git_files <CR>", "Find files tracked by git" },

        -- git
        ["<leader>gs"] = { "<cmd> LazyGit<CR>", "Git status!" },
        ["<leader>gh"] = { "<cmd> 0Gclog<CR>", "Git file history!" },
        ["<leader>gvh"] = { "<cmd> 0Gclog<CR>", "Git file history!" },

        ["gr"] = { "<cmd> Telescope lsp_references<CR>", "lsp references" },
        ["gd"] = { "<cmd> Telescope lsp_definitions<CR>", "lsp definitions" },

        -- fancy tmux integration
        ["<C-f>"] = { "<cmd>silent !tmux neww tmux-sessionizer<cr>" },

        ["<leader>riv"] = { ":Refactor inline_var", "Refactor inline variable" },
        ["<leader>rif"] = { ":Refactor inline_func", "Refactor inline function" },
        ["<leader>rb"] = { ":Refactor extract_block", "Refactor extract block" },
        ["<leader>rbf"] = { ":Refactor extract_block_to_file", "Refactor extract block to file" },
        ["<leader>db"] = { "<cmd> DBUIToggle<CR>", "Toggle dadbod databse ui" },
        ["<leader>fi"] = { "ggVG=", "Reindent file" },

        ["<leader>fml"] = {
            function()
                require("cellular-automaton").start_animation "make_it_rain"
            end,
        },

        ["<leader>fu"] = {
            function()
                require("cellular-automaton").start_animation "scramble"
            end,
        },
        ["<leader>fuu"] = {
            function()
                require("cellular-automaton").start_animation "game_of_life"
            end,
        },
        -- centered search
        ["n"] = { "nzz", "Centered jumps in search mode" },
        ["N"] = { "Nzz", "Centered jumps in search mode" },
        ["*"] = { "*zz", "Center search term on init" },
        ["<leader>x"] = {
            function()
                require("nvchad.tabufline").close_buffer()
            end,
            "Close buffer",
        },
        ["K"] = {
            function()
                require("pretty_hover").hover()
            end,
            "LSP hover",
        },
        ["-"] = { "<CMD>Oil<CR>", "Open parent directory" },

        -- harpoon
        ["<leader>m"] = {
            function()
                require("harpoon"):list():append()
            end,
            "Add file to harpoon",
        },
        ["<leader>h"] = { function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, "Toggle harpoon menu", },
        ["<leader>n"] = { function() require("harpoon"):list():select(1) end, "Go to harpoon mark 1", },
        ["<leader>e"] = { function() require("harpoon"):list():select(2) end, "Go to harpoon mark 2", },
        ["<leader>i"] = { function() require("harpoon"):list():select(3) end, "Go to harpoon mark 3", },
        ["<leader>o"] = { function() require("harpoon"):list():select(4) end, "Go to harpoon mark 4", },

        -- Stephan
        ["<C-s>"] = { ":w<enter>", "Save current file" },
        ["<C-c>"] = { ":q<enter>", "Quit" },
        ["U"] = { "<C-r>", "Redo" },
        ["<home>"] = { "<home>_", "First non-blank place on line but scrolled all to the left" },

        ["<leader>y"] = { '"+y', "Yank to system clipboard" },
        ["<leader>Y"] = { '"+Y', "Yank line to system clipboard" },
        ["<leader>d"] = { '"_d', "Delete line to system clipboard" },
        ["<leader>p"] = { '"+p', "Insert from clipboard" },
        ["<c-p>"] = { '"0p', "Insert last yanked" },
        ["<C-d>"] = { "<C-d>zz", "Keep cursor centered while scrolling" },
        ["<C-u>"] = { "<C-u>zz", "Keep cursor centered while scrolling" },
    },
    v = {
        ["J"] = { ":m '>+1<CR>gv=gv", "Move selected lines down" },
        ["K"] = { ":m '<-2<CR>gv=gv", "Move selected lines down" },
        ["<leader>gh"] = { ":Gclog<CR>", "Git file history!" },

        -- Stephan
        ["<leader>y"] = { '"+y', "Yank to system clipboard" },
        ["<leader>Y"] = { '"+Y', "Yank line to system clipboard" },
        ["<leader>d"] = { '"_d', "Delete line to system clipboard" },
        ["<leader>p"] = { '"+p', "Insert from clipboard" },
        ["<c-p>"] = { '"0p', "Insert last yanked" },
    },
    x = {
        ["<leader>re"] = { ":Refactor extract ", "Refactor extract method" },
        ["<leader>rf"] = { ":Refactor extract_to_file ", "Refactor extract to other file" },
        ["<leader>rv"] = { ":Refactor extract_var ", "Refactor extract variable" },
        ["<leader>ri"] = { ":Refactor inline_var", "Refactor inline variable" },
    },
    i = {
        ["<C-c>"] = { "<Esc>", "Remap for vertical edit to handle C-c" },
        ["<C-a>"] = { "<ESC>^i", "Beginning of line" },

        -- Stephan
        ["<C-s>"] = { ":w<enter>", "Save current file" },
        ["<home>"] = { "<esc><home>_i", "First non-blank place on line but scrolled all to the left" },
        ["<C-Del>"] = { "<Esc><Right>dwi", "Delete word forward" },
        ["<C-H>"] = { "<C-w>", "Delete word backward with backspace which is odly mapped to h" },
    },
}
M.trouble = {
    n = {
        ["<leader>ww"] = {
            function()
                require("trouble").toggle "document_diagnostics"
            end,
            "toggle trouble with workspace diagnostics",
            opts = { silent = true, noremap = true },
        },
    },
}
M.lsp = {
    n = {
        ["<leader>fm"] = {

            function()
                require("conform").format()
            end,
            "format with conform",
        },
    },
}
M.copilot = {
    i = {
        ["<M-CR>"] = {
            function()
                vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
            end,
            "Copilot Accept",
            { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true },
        },
    },
}
return M
