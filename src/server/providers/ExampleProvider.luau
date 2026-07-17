const ExampleProvider = {}

function ExampleProvider.OnStart(self: Self)
	print('ExampleProvider started!')
end

type Self = typeof(ExampleProvider)
return ExampleProvider
