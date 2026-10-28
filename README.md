# 希露菲桌宠（Sylphie Desktop Pet） 🌿

给 [DeepSeek Harness（DSH）桌面版](https://github.com/) 用的桌宠：白发 Q 版**希露菲**（无职转生）住在你屏幕右下角。

![希露菲](https://img.shields.io/badge/角色-希露菲-9cf) ![dsh-pet](https://img.shields.io/badge/插件-dsh--pet-blue) ![size](https://img.shields.io/badge/体积-6MB-brightgreen)

## ✨ 她会做什么

- 🫧 待机呼吸、闲逛、转身、原地小憩
- 👆 **点她/摸她 → 撒娇说话**（AI 生成台词，默认黏人甜妹人设）
- 🎭 右键菜单：30+ 动作随便点（害羞扭捏、开心蹦跳、鼓脸颊生气、写代码……）
- 💬 定时碎碎念、工作状态陪伴
- 🔧 全部可配置：大小 / 台词人设 / 动作池 / 表情图开关

123 个 VP9 透明动画，源自 [petdex.dev](https://petdex.dev) 的 Sylphiette Q 版精灵图。

## 📦 安装

**前提**：电脑装有 DeepSeek Harness 桌面版。

### 方式一：一键安装（推荐）

1. 安装桌宠插件（PowerShell）：

   ```powershell
   dsh plugin --profile desktop add dsh-pet
   ```

2. 下载 📦 **[希露菲桌宠-分享包.zip](https://github.com/beastboy001/Shirufi-/releases/download/v1.0/sylphie-desktop-pet-v1.0.zip)**（6.1 MB），解压
3. 双击 **一键安装.bat**，跟着提示走
4. 重启 DSH → 右下角出现白发小姑娘 ✅

> 也可以直接用本仓库里的 `pet/` 文件夹手动安装，见方式二。

### 方式二：手动安装

```powershell
# 1. 装插件（同上）
dsh plugin --profile desktop add dsh-pet

# 2. 复制素材
Copy-Item -Recurse pet\* $env:USERPROFILE\.dsh\dsh-pet\pet\
```

3. （可选）把 `补丁-可选\` 里的 `sprite.js`、`main.js` 覆盖到
   `%USERPROFILE%\.dsh\profiles\desktop\node_modules\dsh-pet\runtime\electron-helper\`
   → 点击能说话；不装也能用
4. 重启 DSH

## 🎨 自定义

编辑 `%USERPROFILE%\.dsh\dsh-pet\pet\sylphie-config.jsonc`：

| 字段 | 说明 |
|---|---|
| `size` | 显示大小（默认 280） |
| `whisperPrompt` | 说话的人设和语气，随便改 |
| `whisperImageEnabled` | 要不要配表情包图 |
| `animations` | 各动作池，用文件名对上就能播 |

## 🗑️ 卸载

删除 `%USERPROFILE%\.dsh\dsh-pet\pet\` 下的 `sylphie-config.jsonc` 和 `sylphie-animation\`。

## 📄 素材来源

- 精灵图：[petdex.dev](https://petdex.dev) — Sylphiette（免费分享）
- 打包分发：DSH 桌宠插件 dsh-pet 0.3.8 的 pet-pack 机制

> 无职转生 © 理不尽な孫の手 / MF Books /「無職転生」製作委員会
> 本仓库仅为粉丝制作的桌宠配置包，角色版权归原权利方所有。
