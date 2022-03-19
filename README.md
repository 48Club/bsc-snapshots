# bsc-snapshots

> Database uses [erigon(1fd434d)](https://github.com/ledgerwatch/erigon/tree/1fd434d3d1e38aa20694e7229da3ca7c471d06a5) for sync

## Usage

Step 1: Download

- Get [latest.torrent](https://raw.githubusercontent.com/du5/bsc-snapshots/main/latest.torrent)

- Download DB(*from block [16189777](https://bscscan.com/block/16189777)*) using magnet tools 🧲, u can use qbittorrent or transmission to download.
    | Software | Docker | Binary |
    | :----: | :----: | :----: |
    | [qbittorrent](https://github.com/qbittorrent/qBittorrent) | [linuxserver/qbittorrent](https://hub.docker.com/r/linuxserver/qbittorrent) | https://www.qbittorrent.org/download.php |
    | [transmission](https://github.com/transmission/transmission) | [linuxserver/transmission](https://hub.docker.com/r/linuxserver/transmission) | https://transmissionbt.com/download |

Step 2: Uncompress

- running a script: *`tar -zxvf erigon.16189777.tar.gz`*

Step 3: Run && Data

- Stop the running erigon client if you have one by *`killall -15 erigon`*, and make sure the client has shut down.

- Start the erigon client again whith flags: *` --prune=hrtc --chain=bsc --datadir=db`*
