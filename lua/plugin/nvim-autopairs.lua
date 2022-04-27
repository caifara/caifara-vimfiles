local npairs = require('nvim-autopairs')

npairs.setup({ map_cr = true })
npairs.clear_rules()
npairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))

