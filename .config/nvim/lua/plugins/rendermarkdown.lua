require("render-markdown").setup({
    latex = { enabled = false },
    bullet = {
      icons = { '', '', '', '' },
    },
    code = {
        border = 'thin',
        style = 'normal',
        sign = false,
        left_pad = 1,
        right_pad = 1,
    },
})
