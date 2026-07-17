const ReplicatedStorage = game:GetService('ReplicatedStorage')
const RunService = game:GetService('RunService')
const ServerScriptService = game:GetService('ServerScriptService')

const paths = {}

paths.client = ReplicatedStorage:WaitForChild('Client')
paths.server = RunService:IsServer() and ServerScriptService:WaitForChild('Server')

return paths
