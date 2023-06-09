local queries = require "nvim-treesitter.query"

local M = {}

-- TODO: In this function replace `module-template` with the actual name of your module.
function M.init()
  require "nvim-treesitter".define_modules {
    module_template = {
      module_path = "nvim-treesitter.func-call-tree",
      is_supported = function(lang)
        return queries.get_query(lang, 'func-tree') ~= nil
      end
    }
  }
end

return M
