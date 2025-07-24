# Kitty tmux 风格热键配置

## 主要热键映射

### 标签管理 (相当于 tmux 的 window)
- `Ctrl+a c` - 新建标签（使用当前目录）
- `Ctrl+a x` 或 `Ctrl+a &` - 关闭标签
- `Ctrl+a n` - 下一个标签
- `Ctrl+a p` - 上一个标签
- `Ctrl+a 0-9` - 跳转到指定标签
- `Ctrl+a l` - 跳转到最后使用的标签
- `Ctrl+a ,` 或 `Ctrl+a $` - 重命名标签

### 窗口分割 (相当于 tmux 的 pane)
- `Ctrl+a %` 或 `Ctrl+a \` - 垂直分割
- `Ctrl+a "` 或 `Ctrl+a -` - 水平分割
- `Ctrl+a w` - 关闭窗口
- `Ctrl+a o` - 下一个窗口
- `Ctrl+a ;` - 上一个窗口
- `Ctrl+a ←→↑↓` - 窗口导航

### 窗口调整
- `Ctrl+a Shift+←→↑↓` - 调整窗口大小

### 复制和粘贴
- `Ctrl+a [` - 进入滚屏/复制模式 (使用 nvim)
- `Ctrl+a ]` - 粘贴

### 布局和其他
- `Ctrl+a Space` - 切换布局
- `Ctrl+a r` - 重载配置
- `Ctrl+a ?` 或 `Ctrl+a i` - 显示帮助

## 特性匹配

### 与 tmux 配置的对应关系
- ✅ Ctrl+a 前缀键
- ✅ 使用当前目录创建新标签/窗口
- ✅ vi 模式复制
- ✅ 1,000,000 行历史记录
- ✅ 保持 Shift+Enter 换行行为

### kitty 独有优势
- 更好的图像显示支持
- 原生 Unicode 支持
- 更快的性能
- 丰富的布局选择 (tall, stack, fat, grid, etc.)
- 更好的字体渲染

## 使用说明

1. 重启 kitty 或使用 `Ctrl+a r` 重载配置
2. 所有热键与 tmux 保持一致
3. 可以直接移除 tmux，使用 kitty 原生功能
4. 支持多种布局，比 tmux 更灵活