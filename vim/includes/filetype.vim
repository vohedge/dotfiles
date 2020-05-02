filetype on

" Berksfile
au BufNewFile,BufRead Berksfile	set filetype=ruby

" Guard
au BufNewFile,BufRead Guardfile,.Guardfile set filetype=ruby

" Ruby
au BufNewFile,BufRead *.rb,*.rbw,*.gemspec set filetype=ruby

" Ruby on Rails
au BufNewFile,BufRead *.builder,*.rxml,*.rjs,*.ruby set filetype=ruby

" Rakefile
au BufNewFile,BufRead [rR]akefile,*.rake set filetype=ruby

" Rantfile
au BufNewFile,BufRead [rR]antfile,*.rant set filetype=ruby

" IRB config
au BufNewFile,BufRead .irbrc,irbrc set filetype=ruby

" Pry config
au BufNewFile,BufRead .pryrc set filetype=ruby

" Rackup
au BufNewFile,BufRead *.ru set filetype=ruby

" Capistrano
au BufNewFile,BufRead Capfile set filetype=ruby

" Bundler
au BufNewFile,BufRead Gemfile set filetype=ruby

" ejs syntax
autocmd BufNewFile,BufRead *.ejs set filetype=html

" Fugitiveの文字化け防止
autocmd FileType gitcommit :set fileencoding=utf-8

