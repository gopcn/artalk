<p align="center">
<a href="https://usememos.com/"><img height="100px" alt="logo" src="https://usememos.com/logo.webp"/></a>
</p>

<p align="center"><b><a href="https://github.com/usememos/memos">memos</a>-<a href="https://replit.com">replit</a></b></p>

**Blank Repl**
```bash
git clone https://github.com/gopcn/memos-replit.git &&
shopt -s dotglob &&
mv -b memos-replit/* ./ &&
rm -rf *~ memos-replit .git .github update.sh README.md &&
echo "部署成功，点击Run使用。"
```
**🆙 How to Update**
```
bash <(curl -s https://raw.githubusercontent.com/gopcn/memos-replit/main/update.sh)
```