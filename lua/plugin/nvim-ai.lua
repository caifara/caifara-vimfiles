-- keys in ~/.config/.env

-- require("nvim.ai")

local ai = require('ai')
ai.setup({
  --provider = "snova",
  --provider = "hyperbolic",
  --provider = "cerebras",
  --provider = "gemini",
  --provider = "mistral",
  provider = "anthropic",
  --provider = "deepseek",
  --provider = "groq",
  --provider = "cohere",
})
