# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18822732](https://bscscan.com/block/18822732)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18822732.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 516.85 gb, 549.69 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 62fb373c9bf83f39aaeb49db76cf72efda182d657d864f819062441cd7eddd06
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

!!! from block [18817696](https://bscscan.com/block/18817696)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18817696.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 746.30 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 3be020ad589a316266776c8583ee88b0093ade4f44ee30b45de3a54c3f702f42
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
