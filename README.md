# bsc-snapshots

> Database uses [erigon(0cac29d)](https://github.com/ledgerwatch/erigon/tree/0cac29d) for sync

## Usage

Step 1: Download

- Get [latest.torrent](https://raw.githubusercontent.com/du5/bsc-snapshots/main/latest.torrent)


- Download DB(*from block [15698580](https://bscscan.com/block/15698580)*) using magnet tools 🧲

Step 2: Uncompress

- running a script: ```tar -zxvf erigon.15698580.tar.gz```

Step 3: Run && Data

- Stop the running erigon client if you have one by `killall -15 erigon`, and make sure the client has shut down.
- Start the erigon client again whith flags: ` --prune=hrtc --chain=bsc --datadir=db`