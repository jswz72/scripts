dir=~/dotfiles
olddir=~/dotfiles_old
files=".bash_profile .vimrc"

echo "Creating $olddir for backup of dotfiles in ~"
mkdir -p $olddir
echo "done"

echo "Going to $dir"
cd $dir
echo "done"

for file in $files; do
		echo "Moving existing dotfiles from ~ to $olddir"
		mv ~/$file ~/dotfiles_old/
		echo "Creating symlink to $file in home dir."
		ln -s $dir/$file ~/$file
done

echo "Settings sources"
source ~/.bashrc
source ~/.vimrc
