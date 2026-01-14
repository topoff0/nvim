return {
    "OXY2DEV/markview.nvim",
    lazy = false,

    dependencies = { "saghen/nvim-cmp" },

    config = function()
      require("markview").setup();
    end
};
