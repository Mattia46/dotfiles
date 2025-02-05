require("render-markdown").setup({
    latex = { enabled = false },
    bullet = {
      icons = { '', '', '', '' },
    },
     checkbox = {
        unchecked = { icon = '✘ ' },
        checked = { icon = '✔ ' },
        custom = { todo = { rendered = '◯ ' } },
    },
    heading = {
       position = 'inline',
        -- border = true
       -- width = 'block',
    },
    code = {
        border = 'thin',
        -- style = 'normal',
        -- sign = false,
        left_pad = 1,
        right_pad = 1,
    },
})
