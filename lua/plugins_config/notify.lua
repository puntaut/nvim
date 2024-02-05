local config = function()
    require("notify").setup {
        -- render = "compact",
        render = "minimal",
        -- stages = "fade",
        stages = "static",
        fps = 60,
        timeout = 2000,
    }
end

return {
    "rcarriga/nvim-notify",
    config = config,
}
