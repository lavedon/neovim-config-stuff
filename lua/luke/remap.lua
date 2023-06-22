vim.g.mapleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
--
-- Dealing eith error messages
vim.keymap.set("n", "<leader>e", "lua vim.diagnostic.open_float()<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>w", "lua vim.diagnostic.goto_prev()<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>r", "lua vim.diagnostic.goto_next()<CR>", {noremap = true, silent = true})


-- Misc Navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Copilot remappings
vim.api.nvim_set_keymap('n', '<leader>g', ':Copilot panel<CR>', {noremap = true, silent = true})
function _G.copilot_accept()
  local fn = vim.fn
  vim.api.nvim_feedkeys(fn['copilot#Accept'](), 'i', true)
end

vim.api.nvim_set_keymap('i', '<leader>j', ':lua copilot_accept()<CR>', {noremap = true, silent = true})
vim.keymap.set('i', '<M-.>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<M-,>', '<Plug>(copilot-previous)')

--  My CopyBufferPlugin
vim.keymap.set('n', '<leader>cb', ':CopyBufferToClipboard<CR>', {noremap = true, silent = true})
