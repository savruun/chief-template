const ExampleProvider = {}

function ExampleProvider.Start(self: Self)
	print('ExampleProvider started!')
end

type Self = typeof(ExampleProvider)
return ExampleProvider
