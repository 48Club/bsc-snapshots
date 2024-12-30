# *bsc-snapshots*


- *[全量快照](#全量快照)*
- *[增量快照](#增量快照)*
    - *[使用教程](#使用教程)*


## 全量快照

BSC 主网全量快照，包含了完整的区块数据，适用于快速启动节点。

| 文件 | md5 | 体积 |
| --- | --- | --- |
| [geth.fast.45012199.tar.zst](https://snapshots.48.club/geth.fast.45012199.tar.zst) | `f11f5ec9afc7ae67d69e28060b6c3dad` | 324.26G |
| [geth.full.45003222.tar.zst](https://snapshots.48.club/geth.full.45003222.tar.zst) | `9cd00a2ecba312692cfcbb86433962e4` | 823.79G |



## 增量快照

BSC 主网增量快照，你可以从近两个月任意版本快照快速修补到最新版本快照。

你需要通过 https://access.snapshots.48.club 获取访问权限。

<details>
<summary> Geth 快速节点, 修补到高度 45352858 </summary>

| 文件 | md5 | 体积 |
| --- | --- | --- |
| [geth_fast_45012199_to_45352858.patch](https://incremental.snapshots.48.club/geth_fast_45012199_to_45352858.patch) | `bc7df306b175bf524cc514dbac86eaa1` | 26.96G |
| [geth_fast_45329863_to_45352858.patch](https://incremental.snapshots.48.club/geth_fast_45329863_to_45352858.patch) | `8959024006068dd9cfd326d3095c41e8` | 9.69G |
</details>

<details>
<summary> Geth 全节点, 修补到高度 45354930 </summary>

| 文件 | md5 | 体积 |
| --- | --- | --- |
| [geth_full_45003222_to_45354930.patch](https://incremental.snapshots.48.club/geth_full_45003222_to_45354930.patch) | `18b638be8b3d59e39a855221a0215ddb` | 55.73G |
</details>


### 使用教程

我们推荐用户使用 `xfs` 等支持 `reflink` 的文件系统, 这样可以在不占用额外磁盘空间的情况下快速创建快照并修补到最新版本。

这篇教程以你目前快照版本为 `45012199` 为例, 启动一个全新节点, 请灵活使用, 如果对于你来说很难理解, 请使用全量快照。


```bash
# 首次使用 48Club 快照
# 安装依赖, 以 Debian 12 为例
sudo apt install -y aria2 zstd duplicity
# 下载快照
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.fast.45012199.tar.zst
# 可选: 验证文件完整性
openssl md5 geth.fast.45012199.tar.zst
# 解压快照
zstd -cd geth.fast.45012199.tar.zst | tar xf -

# 创建你的工作目录
mkdir -p bsc_node/geth
# copy 快照到工作目录
cp -r geth.fast/geth/chaindata bsc_node/geth/
# 如果你使用的文件系统支持 reflink, cp 命令将会在很短的时间完成, 并且不占用额外磁盘空间
# 查看你的磁盘空间
du -h bsc_node/geth geth.fast/geth
64K	bsc_node/geth/chaindata/ancient/state
20G	bsc_node/geth/chaindata/ancient/chain
20G	bsc_node/geth/chaindata/ancient
378G	bsc_node/geth/chaindata
378G	bsc_node/geth
64K	geth.fast/geth/chaindata/ancient/state
20G	geth.fast/geth/chaindata/ancient/chain
20G	geth.fast/geth/chaindata/ancient
378G	geth.fast/geth/chaindata
378G	geth.fast/geth
# 启动节点
geth --datadir bsc_node $flags

# 修补到区块 45329863 为例, $download_link 请替换为你的下载链接
wget $download_link -O geth_fast_45012199_to_45329863.patch
# 可选: 验证文件完整性
openssl md5 geth_fast_45012199_to_45329863.patch
# 修补
rdiffdir patch geth.fast geth_fast_45012199_to_45329863.patch

# 关闭节点
killall geth

# 删除旧的工作目录
rm -rf bsc_node/geth/chaindata
# 替换为修补后的数据目录
cp -r geth.fast/geth/chaindata bsc_node/geth/
# 启动修补后的节点
geth --datadir bsc_node $flags

# 注意: 此时你的 geth.fast 目录版本为 45329863
#      下次修补请使用 geth_fast_45329863_to_xxxxxx.patch
#      请不要在 geth.fast 目录下进行任何操作, 以免影响修补

```