cd ~/.config/nvim || exit

git add .
git commit -m "Backup automático: $(date)"
git push origin master
