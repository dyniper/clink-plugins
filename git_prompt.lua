function git_prompt_filter()
    for line in io.popen("git branch 2>nul"):lines() do
        local m = line:match("%* (.+)$")
        if m then
            clink.prompt.value = clink.prompt.value.."(\027[31;40m"..m.."\027[m) "
            break
        end
    end

    return false
end

clink.prompt.register_filter(git_prompt_filter, 50)