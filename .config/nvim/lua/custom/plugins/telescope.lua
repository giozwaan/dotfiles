return {
   'nvim-telescope/telescope.nvim',
   -- , tag = '0.1.8',
	-- dependencies = {
    --   "nvim-telescope/telescope-smart-history.nvim",
    --   "nvim-telescope/telescope-ui-select.nvim",
    -- },
    config = function()
      require "custom.telescope"
    end
}
