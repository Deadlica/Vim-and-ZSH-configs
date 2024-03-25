---@type ChadrcConfig
local M = {}

M.ui = { theme = 'onedark' }
M.plugins = 'custom.plugins'
M.mappings = require("custom.mappings")

local clipboard = {}

    -- Check if running in WSL
local wsl = io.popen("uname -r"):read("*a")
if wsl and wsl:match("microsoft") then -- WSL on Windows
  clipboard.name = 'WindowsClipboard'
  clipboard.copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  }
  clipboard.paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  }
else -- Real Arch Linux
  clipboard.name = 'LinuxClipboard'
  clipboard.copy = {
    ['+'] = 'xclip -selection clipboard',
    ['*'] = 'xclip -selection clipboard',
  }
  clipboard.paste = {
    ['+'] = 'xclip -selection clipboard -o',
    ['*'] = 'xclip -selection clipboard -o',
  }
end

clipboard.cache_enabled = 0

vim.g.clipboard = clipboard

return M
