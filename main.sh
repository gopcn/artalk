#!/bin/bash

# 防休眠命令
while true; do
  response=$(curl -s --user-agent "${UA_Browser}" "https://${REPL_SLUG}.${REPL_OWNER}.repl.co")
  if [[ $response == *"Error"* ]]; then
    echo "$(date +'%Y%m%d%H%M%S') Error: Failed to access URL"
  else
    echo "$(date +'%Y%m%d%H%M%S') Keeping online ..."
  fi
  sleep 600
done &

# 赋予执行权限
chmod +x ./memos

# 数据库文件存放的地方
mkdir -p ./db

# 图片缓存位置
mkdir -p ./db/.thumbnail_cache

# 启动Memos
echo "run memos >>> $(date '+%Y-%m-%d %H:%M:%S')"

MEMOS_URL="https://${REPL_SLUG}.${REPL_OWNER}.repl.co"
echo "click url: $MEMOS_URL"

# 运行memos
./memos --data ./db --mode prod --port 6969
