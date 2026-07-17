const Traits = require('@pkg/traits')

const ExampleTrait = {}

ExampleTrait.Info = Traits.info({
	Tag = 'ExampleTrait',
	InstanceIs = 'BasePart',
})

function ExampleTrait.Init(self: Self)
	print('ExampleTrait initialized!')
end

function ExampleTrait.Start(self: Self)
	print('ExampleTrait started!')
end

type Self = typeof(ExampleTrait) & Traits.BoundOf<typeof(ExampleTrait.Info)>
return ExampleTrait
