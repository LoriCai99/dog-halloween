# 狗狗万圣变装间 🎃🐶🐱

给办公室狗狗（或者你家的毛孩子）做万圣节数字变装的小网页：<https://loricai99.github.io/dog-halloween/>

- 88 件手绘装扮（帽子头饰、脸部、服装道具、场景装饰）
- 41 句猫狗中英文文字贴纸，也能自己写
- 28 个表情贴纸、6 种相框、7 种滤镜，还有贴纸白边和纸感颗粒
- 拖动、缩放、旋转、翻转、调整图层，手机上可以双指操作；🎲 一键随机变装
- 「上传我的宠物」：用自己的照片，图片只留在自己的浏览器里，不会上传
- 保存成 PNG 发到群里

纯前端，不需要服务器。

## 添加办公室照片（比如合照）

1. 把照片放进 `photos/` 文件夹，比如 `photos/group.jpg`
2. 在 `photos/photos.json` 里加一行：

```json
[
  { "name": "狗狗合照", "file": "group.jpg" }
]
```

页面会自动把这些照片放在选择列表的最前面，代替示例狗狗。

## 文件

| 文件 | 用途 |
| --- | --- |
| `dog-costume.html` | 源文件（也是 Claude Artifact 版本，带共享展览墙） |
| `index.html` | 由 `./build.sh` 生成，GitHub Pages 用 |
| `photos/` | 内置照片和 `photos.json` 清单 |

修改 `dog-costume.html` 后运行 `./build.sh` 重新生成 `index.html`。
