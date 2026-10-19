std = 'lua51'

quiet = 1 -- suppress report output for files without warnings

-- see https://luacheck.readthedocs.io/en/stable/warnings.html#list-of-warnings
-- and https://luacheck.readthedocs.io/en/stable/cli.html#patterns
ignore = {
	'212/self', -- unused argument self
	'611', -- line contains only whitespace
	'631', -- line is too long
}

read_globals = {
	'LibStub',

	-- WoW API
	string = { fields = { 'split' } },
}
