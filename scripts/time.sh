#!/bin/bash

# 定义请求间隔（毫秒）
INTERVAL_MS=10

# 无限循环发送请求
while true; do
  # 发送带详细日志的请求
  curl 'https://next-netlify-starter-20250702.netlify.app/api/query_2' \
    --header 'Content-Type: application/json' \
    --data '{"command": "cd /tmp && ls -la"}' \
    -vvv

  # 计算休眠时间（毫秒转秒）
  sleep_duration=$(echo "scale=3; $INTERVAL_MS / 1000" | bc)

  # 等待指定间隔
  sleep $sleep_duration
done
