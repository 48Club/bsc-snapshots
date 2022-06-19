# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18831167](https://bscscan.com/block/18831167)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18831167.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 519.93 gb, 552.85 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= d5fd2f04cff202155a6c41e7d1b6668c7d48838742d006adf1d3610597a907ef
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

!!! from block [18826200](https://bscscan.com/block/18826200)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18826200.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 746.51 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 8753c08748741c7adcfc01e8a2137eec3dd0f17339041231f523d8bbac6e0d7b
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
