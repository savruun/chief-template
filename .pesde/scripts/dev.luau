local process = require('@lune/process')
local task = require('@lune/task')

process.env['ROBLOX_DEV'] = true

task.spawn(function()
	process.exec('rojo', { 'sourcemap', '--output', 'sourcemap.json', '--watch' }, { stdio = 'inherit' })
end)

task.spawn(function()
	process.exec('darklua', { 'process', 'src/', 'out/' }, { stdio = 'inherit' })
end)

process.exec('rojo', { 'serve', 'build.project.json' }, { stdio = 'inherit' })
