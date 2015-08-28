function short_prompt_filter()
	-- Remove the '>' at the end of the prompt
	clink.prompt.value = string.sub(clink.prompt.value, 1, -2)

	-- Replace home with '~'
	clink.prompt.value = string.gsub(clink.prompt.value, os.getenv('USERPROFILE'), '~')

	-- Format promt to 'user@host:dir$ ' where dir is only the last part of the dir
    clink.prompt.value = os.getenv('USERNAME')..'@'..os.getenv('COMPUTERNAME')..':\027[1m'..string.gsub(clink.prompt.value, '.*\\', '')..'\027[m$ '

    return false
end

clink.prompt.register_filter(short_prompt_filter, 40)