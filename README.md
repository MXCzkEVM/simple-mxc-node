# simple-mxc-node

Detailed steps are here : https://doc.moonchain.com/docs/Testnet-Tutorials/Run-Moonchain-Supernode

旧节点：
升级前注意备份data/l2_execution_engine_data文件夹
停止节点，执行docker compose stop或者down再更新


1.在main分支执行git pull或者以其他方式更新下载仓库https://github.com/MXCzkEVM/simple-mxc-node
2.复制.env.exmaple文件更名为.env，并且修改L1_ENDPOINT_HTTP,L1_ENDPOINT_WS环境变量分别为arbitrum one网络的http rpc和rpc websocket链接

执行"docker compose --profile l2_execution_engine up  -d"命令



Old Node:
Before upgrading, remember to back up the data/l2_execution_engine_data folder.
Stop the node by running docker compose stop or down, then proceed with updates.

Steps:

On the main branch, run git pull or update the repository via other methods: https://github.com/MXCzkEVM/simple-mxc-node.
Copy the .env.exmaple file and rename it to .env. Set L1_ENDPOINT_HTTP and L1_ENDPOINT_WS to the HTTP RPC and WebSocket RPC endpoints of the Arbitrum One network, respectively.
Run the "docker compose --profile l2_execution_engine up  -d"command.
