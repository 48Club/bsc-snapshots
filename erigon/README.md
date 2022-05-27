# bsc-snapshots

> Database uses [erigon(v2022.05.04)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.05.04) for sync

## Usage

Step 1: Download

- BitTorrent

  - Get [latest.torrent](https://goto.moe/erigon)

  - Download DB(_from block [18044806](https://bscscan.com/block/18044806)_) using magnet tools 🧲, u can use qbittorrent or transmission to download.
    | Software | Docker | Binary |
    | :----: | :----: | :----: |
    | [qbittorrent](https://github.com/qbittorrent/qBittorrent) | [linuxserver/qbittorrent](https://hub.docker.com/r/linuxserver/qbittorrent) | https://www.qbittorrent.org/download.php |
    | [transmission](https://github.com/transmission/transmission) | [linuxserver/transmission](https://hub.docker.com/r/linuxserver/transmission) | https://transmissionbt.com/download |

- HTTP

  - Get [erigon.18044806.tar.gz](https://download.bnb48.club/snapshots/erigon.18044806.tar.gz)

Step 2: Uncompress

- running a script: _`pigz -dkc erigon.18044806.tar.gz | tar xvf -`_

Step 3: Run && Data

- Stop the running erigon client if you have one by _`killall -15 erigon`_, and make sure the client has shut down.

- Start the erigon client again whith flags: _`--syncmode=full --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000`_
