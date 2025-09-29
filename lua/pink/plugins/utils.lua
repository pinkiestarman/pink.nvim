return {
  'vimwiki/vimwiki',
  'doums/rg.nvim',
  cmd = { 'Rg', 'Rgf', 'Rgp', 'Rgfp' },
  event = 'VeryLazy',
  config = function()
    require('rg').setup {
      -- Optional function to be used to format the items in the
      -- quickfix window (:h 'quickfixtextfunc')
      qf_format = nil,
      -- Glob list of excluded files and directories when the special
      -- `e` flag is set (it uses the `--glob !*` flag of rg)
      excluded = {
        '.idea',
        'node_modules',
        '.git',
        'target',
        'package-lock.json',
        'Cargo.lock',
      },
    }
  end,
}
