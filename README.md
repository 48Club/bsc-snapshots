# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18786425](https://bscscan.com/block/18786425)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18786425.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 510.92 gb, 543.62 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= bb4edb76f11debd1eac05f8eabf2a478de8294e261206ae4f54512bad843f6c7
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18793355](https://bscscan.com/block/18793355)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18793355.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 745.84 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 540e86dd294c139213ac0236bcc4a5df1ed7155002fa5dd310d6388aa40316ab
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
