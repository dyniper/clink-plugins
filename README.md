# clink-plugins
Collection of plugins for clink ( http://mridgers.github.io/clink/ )

These are my plugins which I use in clink. Most were inspired by other people work, as I am not very fluent in Lua. Anyways, enjoy!

# Usage
Drop the plugin file in your clink app data directory (usually C:\Users\{user}\AppData\Local\clink)

# Plugins
|Plugin            |Description  |
|------------------|-------------|
|bash_prompt.lua   | Prompt filter which modify your prompt to look more like bash! Shows as 'username@hostname:currentdir$ ', where current dir is the last dir of the path, thus avoiding having super long prompt. currentdir is also replaced by '~' when in home directory   |
|git_prompt.lua    | Prompt filter which append the current git branch if the current folder is a git repo.   |
