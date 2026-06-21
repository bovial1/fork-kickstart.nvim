vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name == 'markdown-preview.nvim' and ev.data.kind ~= 'delete' then
      vim.fn['mkdp#util#install']()
    end
  end,
})

vim.pack.add({
  { src = 'https://github.com/iamcco/markdown-preview.nvim', name = 'markdown-preview.nvim' },
})
