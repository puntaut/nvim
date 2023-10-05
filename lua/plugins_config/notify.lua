local config = function()
    require("notify").setup {
        render = "compact",
        stages = "fade",
        fps = 60,
        timeout = 2000,
    }
end

return {
    "rcarriga/nvim-notify",
    config = config,
}
