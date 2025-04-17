local function git_fetch()
	local status = vim.fn.system("git fetch -v")
	print(status)
end

git_fetch()
