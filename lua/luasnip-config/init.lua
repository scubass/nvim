local ls = require "luasnip"

ls.config.set_config {
	history = true,

	updateevents = "TextChanged, TextChangedI",

	enable_autosnippet = true,

}



require("luasnip.loaders.from_vscode").lazy_load()
ls.filetype_extend("all", { "_" })
-- ls.snippets = require("luasnip-snippets").load_snippets()

vim.keymap.set({ "i", "s" }, "<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- <c-j> is my jump backwards key.
-- this always moves to the previous item within the snippet
vim.keymap.set({ "i", "s" }, "<c-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

