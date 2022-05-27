# bsc-snapshots

> Database uses [geth(v1.1.10)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.10) for sync

## Usage

Step 1: Download

- Get [latest.torrent](https://goto.moe/geth)

- Download DB(_from block [18163670](https://bscscan.com/block/18163670)_) using magnet tools 🧲, u can use qbittorrent or transmission to download.
  | Software | Docker | Binary |
  | :----: | :----: | :----: |
  | [qbittorrent](https://github.com/qbittorrent/qBittorrent) | [linuxserver/qbittorrent](https://hub.docker.com/r/linuxserver/qbittorrent) | https://www.qbittorrent.org/download.php |
  | [transmission](https://github.com/transmission/transmission) | [linuxserver/transmission](https://hub.docker.com/r/linuxserver/transmission) | https://transmissionbt.com/download |

Step 2: Uncompress

- running a script: _`pigz -dkc geth.18163670.tar.gz | tar xvf -`_

Step 3: Run && Data

- Stop the running geth client if you have one by _`killall -15 geth`_, and make sure the client has shut down.

- Start the geth client.
