**Blank Repl**
```bash
git clone git clone -b master https://github.com/gopcn/artalk.git &&
shopt -s dotglob &&
mv -b memos-replit/* ./ &&
rm -rf *~ memos-replit .git .github update.sh README.md &&
echo "部署成功，点击Run使用。"
```
**🆙 How to Update**
```
bash <(curl -s https://raw.githubusercontent.com/gopcn/memos-replit/main/update.sh)
```
