**[Blank Repl](https://replit.com)**
```bash
git clone        &&
shopt -s dotglob &&
mv -b        /* ./ &&
rm -rf *~        .git .github update.sh README.md &&
echo "部署成功，点击Run使用。"
```
**🆙 How to Update**
```
bash <(curl -s https://raw.githubusercontent.com/        /main/update.sh)
```

```bash
git clone          \
&& shopt -s dotglob \
&& mv -b          /* . \
&& rm -rf *~           .git README.md .github \
&& echo "部署成功，点击Run使用。"
```

**[alist](https://github.com/alist-org/alist)**
```
name: Update AList binary

on:
  schedule:
    - cron: '*/15 * * * *'
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Get latest release
        id: get-latest-release
        uses: pozetroninc/github-action-get-latest-release@master
        with:
          repository: alist-org/alist
          excludes: prerelease, draft
          token: ${{ secrets.GITHUB_TOKEN }}

      - name: Download and extract AList binary
        run: |
          wget "https://github.com/alist-org/alist/releases/download/${{ steps.get-latest-release.outputs.release }}/alist-linux-amd64.tar.gz" -O alist-linux-amd64.tar.gz
          tar -zxvf "alist-linux-amd64.tar.gz" --overwrite
          rm "alist-linux-amd64.tar.gz"

      - name: Commit and push changes if necessary
        run: |
          git config user.name "GitHub Action"
          git config user.email "action@github.com"
          git add .
          git diff-index --quiet HEAD || git commit -m "${{ steps.get-latest-release.outputs.release }}"
          git push
```
.replit
```
run = "./alist server"
```
**获取密码**
```bash
# 随机生成一个密码
./alist admin random
```
```bash
# 手动设置一个密码 `NEW_PASSWORD`是指你需要设置的密码
./alist admin set NEW_PASSWORD
```

**[Artalk](https://github.com/ArtalkJS/Artalk)**
```
name: Update Artalk Binary

on:
  schedule:
    - cron: '*/15 * * * *'
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Get latest release
        id: get-latest-release
        uses: pozetroninc/github-action-get-latest-release@master
        with:
          repository: ArtalkJS/Artalk
          excludes: prerelease, draft
          token: ${{ secrets.GITHUB_TOKEN }}

      - name: Download and Extract Artalk
        run: curl -sL "https://github.com/ArtalkJS/Artalk/releases/download/${{ steps.get-latest-release.outputs.release }}/artalk_${{ steps.get-latest-release.outputs.release }}_linux_amd64.tar.gz" | tar -zxv --strip-components=1

      - name: Commit Changes
        uses: github-actions-x/commit@v2.9
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          commit-message: "${{ steps.get-latest-release.outputs.release }}"
          files: artalk artalk.yml
          rebase: 'true'
          name: GitHub Action
          email: action@github.com
```
ip2region.xdb
```
name: Update IP Database

on:
  schedule:
    - cron: '25,50 * * * *'
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Download and Extract IP Attribution Database
        run: |
          mkdir -p data
          download_url="https://github.com/lionsoul2014/ip2region/raw/master/data/ip2region.xdb"
          echo "downloading $download_url"
          curl -sL "$download_url" -o ./data/ip2region.xdb

      - name: Commit and push changes if necessary
        run: |
          git config user.name "GitHub Action"
          git config user.email "action@github.com"
          git add .
          git diff-index --quiet HEAD || git commit -m "Update IP Database"
          git push origin main
```
**加密密钥 app_key**
```python
pip install pycryptodome
```
```python
from Crypto.Random import get_random_bytes
import binascii

def generate_session_key():
    # Directly return 32-byte random key for AES-256
    return get_random_bytes(32)

# Generate the key and convert it to HEX
session_key = generate_session_key()
hex_key = binascii.hexlify(session_key).decode('utf-8')
print("Generated Session Key (HEX):", hex_key)
```
.replit
```
run = "bash main.sh"
```
main.sh
```
# 赋予执行权限
chmod +x ./artalk

# 启动 Artalk
./artalk server -c artalk.yml
```
replit.nix
```
{ pkgs }: {
    deps = [
        pkgs.cowsay
    ];
}
```
**程序升级**
```bash
./artalk upgrade
```
执行 ```./artalk upgrade -f``` 携带参数 ```-f``` 来进行同版本号的补充更新。
**[模版配置文件](https://github.com/ArtalkJS/Artalk/blob/master/conf/artalk.example.zh-CN.yml)**

**[Cloudreve](https://github.com/cloudreve/Cloudreve)**
```
name: Update Cloudreve Binary

on:
  schedule:
    - cron: '*/15 * * * *'
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Get latest release
        id: get-latest-release
        uses: pozetroninc/github-action-get-latest-release@master
        with:
          repository: cloudreve/Cloudreve
          excludes: prerelease, draft
          token: ${{ secrets.GITHUB_TOKEN }}

      - name: Download and Extract Cloudreve
        run: |
          curl -sL "https://github.com/cloudreve/Cloudreve/releases/download/${{ steps.get-latest-release.outputs.release }}/cloudreve_${{ steps.get-latest-release.outputs.release }}_linux_amd64.tar.gz" | tar -zxv

      - name: Commit Changes
        uses: github-actions-x/commit@v2.9
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          commit-message: "v${{ steps.get-latest-release.outputs.release }}"
          files: cloudreve
          rebase: 'true'
          name: GitHub Action
          email: action@github.com
```
.replit
```
run = "bash main.sh"
```
main.sh
```
# 赋予执行权限
chmod +x ./cloudreve

# 启动 Cloudreve
./cloudreve
```

**Node.js**

**[uptime-kuma](https://github.com/louislam/uptime-kuma)**
```bash
git clone        &&
shopt -s dotglob &&
mv -b        /* ./ &&
rm -rf *~         .git .github index.js README.md &&
echo "部署成功，点击Run使用。"
```
.replit
```
run = "bash main.sh"
```
main.sh
```
git clone https://github.com/louislam/uptime-kuma.git
cd uptime-kuma
npm run setup

# Option 1. Try it
node server/server.js

# (Recommended)
# Option 2. Run in background using PM2
# Install PM2 if you don't have: npm install pm2 -g
pm2 start server/server.js --name uptime-kuma

# 点击Run使用后注释掉第一行的 git clone https://github.com/louislam/uptime-kuma.git
```
replit.nix
```
{ pkgs }: {
	deps = with pkgs; [
	  nodejs-16_x
	  nodePackages.typescript-language-server
	  nodePackages.pm2
	];
}
```
```
name: Update Latest Release

on:
  schedule:
    - cron: '25,50 * * * *'
  workflow_dispatch:

jobs:
  update_release:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v4

      - name: Get latest release
        id: get-latest-release
        uses: pozetroninc/github-action-get-latest-release@master
        with:
          repository: louislam/uptime-kuma
          excludes: prerelease, draft
          token: ${{ secrets.GITHUB_TOKEN }}

      - name: Replace content in README
        run: sed -i "s/git checkout [0-9.]\+ --force/git checkout ${{ steps.get-latest-release.outputs.release }} --force/" README.md

      - name: Commit and push changes if necessary
        run: |
          git config user.name "GitHub Action"
          git config user.email "action@github.com"
          git add .
          git diff-index --quiet HEAD || git commit -m "${{ steps.get-latest-release.outputs.release }}"
          git push
```
**🆙 How to Update**
```bash
# 进入项目目录并拉取代码
cd uptime-kuma
git fetch --all
git checkout 1.23.11 --force

# 安装依赖、下载分发文件并重启应用
npm ci --production
npm run download-dist
pm2 restart uptime-kuma
```
