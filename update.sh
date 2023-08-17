#!/bin/bash

download_url="https://github.com/gopcn/memos-replit/releases/latest/download/memos"
output_file="memos"

rm -rf memos

if wget -q -O "$output_file" "$download_url"; then
    echo "新文件下载成功。"
else
    echo "无法下载新文件。"
    exit 1
fi

echo "更新完毕！"
echo "请点击 Run 按钮重新启动本项目！！！"
