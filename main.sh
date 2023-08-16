#!/bin/bash

# 防休眠命令
while true; do curl -s --user-agent "${UA_Browser}" "https://${REPL_SLUG}.${REPL_OWNER}.repl.co" >/dev/null 2>&1 && echo "$(date +'%Y%m%d%H%M%S') Keeping online ..." && sleep 600; done &

# 启动Memos
echo "run memos >>> $(date '+%Y-%m-%d %H:%M:%S')"

# 可指定权限
chmod +x ./memos

# 数据库文件存放的地方
if [ ! -d ./db ];then
    mkdir ./db
fi

# 图片缓存位置
if [ ! -d ./db/.thumbnail_cache ];then
    mkdir ./db/.thumbnail_cache
fi

MEMOS_URL=https://${REPL_SLUG}.${REPL_OWNER}.repl.co

echo "click url: $MEMOS_URL"

# 运行memos
./memos --data ./db --mode prod --port 6969
