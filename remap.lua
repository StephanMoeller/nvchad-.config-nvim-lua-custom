vim.wo.relativenumber = true
vim.wo.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = ' '


vim.keymap.set({ "n", "v" }, "<c-s>", ":w<enter>");
vim.keymap.set({ "n", "v" }, "<c-c>", ":qa<enter>");
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex);
vim.keymap.set("n", "<leader>s<leader>", ":q<Enter>");
vim.keymap.set("n", "<leader>a<leader>", ":wq<Enter>");
vim.keymap.set("n", "U", "<c-r>"); -- Redo
vim.keymap.set("n", "<enter>", "o<esc>");
vim.keymap.set("n", "<enter>", "o<esc>");

vim.keymap.set({ "n", "v" }, "<leader>c", '"+y');                                      -- Copy/paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>v", '"+p');                                      -- Copy/paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>c", '"+y');                                      -- Copy/paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>v", '"+p');                                      -- Copy/paste from clipboard

vim.keymap.set({ "n", "v" }, "<c-p>", '"0p');                                          -- Paste yanked
vim.keymap.set({ "n", "v" }, "%", "%<up><down>");                                      --  Ensure showing a method name when jumping up to its starting clause

vim.keymap.set({ "n", "v" }, "<c-u>", "<c-u>zz");                                      -- Keep screen centered
vim.keymap.set({ "n", "v" }, "<c-d>", "<c-d>zz");                                      -- Keep screen centered
vim.keymap.set({ "n", "v" }, "*", "*zz");                                              -- Keep screen centered

vim.keymap.set({ "n", "v" }, "<home>", "_");                                           -- Home => go to first non-space
vim.keymap.set({ "n", "v" }, "<end>", "g_");                                           -- End => go to last non-space
vim.keymap.set("i", "<home>", "<esc>_i");                                              -- Home => go to first non-space
vim.keymap.set("v", "<leader>r", 'y:%s/<c-r>"/', {})                                   -- Replace selected text
vim.keymap.set({ "n", "v" }, '<Escape>', '<Escape>:set nohls<Enter>', { silent = true }) -- Pressing escape should always remove highlighting again
