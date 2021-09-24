local dap = require('dap')

-- dap.adapters.ruby = {
--   type = 'executable';
--   command = 'rdbg';
--   args = {'--nonstop', '--command'};
-- }
-- dap.configurations.ruby = {
--   {
--     type = 'ruby';
--     request = 'launch';
--     name = 'Rails';
--     program = 'ruby';
--     programArgs = {'testje.rb'};
--     useBundler = false;
--   },
-- }

dap.adapters.ruby = {
  type = 'server';
  command = 'rdbg';
  port = 1111;
  host = '127.0.0.1';
}

dap.configurations.ruby = {
  {
    type = 'ruby';
    request = 'attach';
    name = 'ruby rdbg attach';
  },
}
