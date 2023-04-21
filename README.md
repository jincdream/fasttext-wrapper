# Embedding Service

本项目是一个简单的词嵌入服务，使用 Node.js 和 worker_threads 实现。它接收文本输入，并返回相应的词嵌入。

## 安装

首先，确保已安装 [Node.js](https://nodejs.org)。

然后，克隆本仓库并安装依赖：

```bash
git clone https://github.com/yourusername/embedding-service.git
cd embedding-service
npm install
```

使用
要启动服务，请运行以下s命令：

```bash
Copy code
npm start
```
服务将在端口 4000 上运行。发送请求以获取词嵌入：

```bash
Copy code
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{"word": "ai world"}' \
     http://localhost:4000/embedding/en
```

贡献
欢迎提交 PR 和 Issue，为本项目做出贡献。

许可
本项目采用 MIT 许可证。