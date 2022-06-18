# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18778565](https://bscscan.com/block/18778565)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18778565.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 527.32 gb, 560.46 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= c5f4007f712b44d92963d2b356eaa3bff824ae198e0c8bda3916c544acbf2897
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

!!! from block [18781711](https://bscscan.com/block/18781711)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18781711.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 743.25 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 36f1ec0f4e65d6b06a3c1313fbe71e38131c75c8d6d3b2868ff67d7c0ca647aa
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
