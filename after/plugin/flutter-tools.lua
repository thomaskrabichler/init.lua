require("flutter-tools").setup {
 flutter_path = "/home/tom/snap/flutter/common/flutter/bin/flutter"
}


local opts = { silent = true, noremap = true}
local keyset = vim.keymap.set


keyset("n", "<leader>fpg",  ":CocCommand flutter.pub.get<CR>", opts)
keyset("n", "<leader>fd",  ":CocCommand flutter.devices<CR>", opts)
keyset("n", "<leader>fa",  ":CocCommand flutter.run<CR>", opts)
keyset("n", "<leader>fq",  ":CocCommand flutter.dev.quit<CR>", opts)
keyset("n", "<leader>fl",  ":CocCommand flutter.dev.openDevLog<CR>", opts)

keyset("n", "<leader>fcl",  ":CocCommand flutter.dev.clearDevLog<CR>", opts)
keyset("n", "<leader>fR",  ":CocCommand flutter.dev.hotReload<CR>", opts)
keyset("n", "<leader>fr",  ":CocCommand flutter.dev.hotRestart<CR>", opts)
keyset("n", "<leader>rcf",  ":CocCommand workspace.renameCurrentFile<CR>", opts)
keyset('n', '<leader>ff', ':call CocAction("format")<CR>', {noremap = true})
