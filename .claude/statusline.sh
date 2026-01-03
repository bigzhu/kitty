#!/bin/bash
# Claude Code status line for kitty

# 获取 git 分支
git_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "no git")

# 获取当前模型（从环境变量，默认为 haiku）
model="${CLAUDE_MODEL:-haiku}"

# 获取项目名称（当前目录名）
project=$(basename "$(pwd)")

# 输出 JSON 格式的状态行
# left: 左侧显示的信息
# right: 右侧显示的信息
jq -n \
  --arg branch "$git_branch" \
  --arg model "$model" \
  --arg project "$project" \
  '{
    left: [$model, $branch, $project] | join(" • "),
    right: "kitty"
  }'
