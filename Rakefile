desc "deploy vimrc"
task :deploy do
  # Bundle and scripts
  system 'git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle'
  system 'cp .vimrc .gvimrc ~/'
  system 'vim +BundleInstall +qa'
  system 'cd ~/.vim/bundle/Command-T/ruby/command-t/; rvm system do ruby extconf.rb; make; cd -'

  # snipmate-snippets
  system 'git submodule init; git submodule update'
  system 'mkdir snipmate-snippets/'
  system 'cd snipmate-snippets/; rake deploy_local; cd -'
end

namespace :push do
  desc "Push local vim config file to github."
  task :config do
    system "cp ~/.vimrc ~/.gvimrc ."
    system "git add .vimrc .gvimrc"
    system "git commit -m 'Rake: update vim config file.'"
    system "git push"
  end
end
