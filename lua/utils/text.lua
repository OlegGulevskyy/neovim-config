function _GET_VISUAL_SELECTION()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end

function search_buffer_visual_selection()
	local text = _GET_VISUAL_SELECTION()
	local escaped = string.gsub(text, "/", "\\/")
	local searchCmd = "/\\V" .. escaped
	vim.cmd(searchCmd)
end
