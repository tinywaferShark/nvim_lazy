-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here" General pattern to match .sv* files
---- Set filetype to systemverilog for .sv files
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end
local sv_group = augroup("sv")
vim.api.nvim_create_autocmd("BufNewFile", {
  group = sv_group,
  pattern = "*.sv*",
  command = "set filetype=systemverilog",
})
vim.api.nvim_create_autocmd("BufRead", {
  group = sv_group,
  pattern = "*.sv*",
  command = "set filetype=systemverilog",
})
