const Chief = require('@pkg/chief')
const Lifecycles = require('@pkg/lifecycles')
const Traits = require('@pkg/traits')
const Dependencies = require('@pkg/dependencies')

const paths = require('@shared/paths')
const server = paths.server :: Folder

Chief.new()
	:AddExtensions({
		Lifecycles.new({
			Lifecycles.PlayerAdded,
			Lifecycles.PlayerRemoving,
		}),

		Traits.new(server:WaitForChild('traits'):GetChildren()),

		Dependencies.new(),
	})
	:Start()
