# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18691593](https://bscscan.com/block/18691593)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18691593.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 531.85 gb, 565.13 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= d3446440cad2214eaf06be7161dd6964a0cb931277322c1869f451f69e27f170
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18685247](https://bscscan.com/block/18685247)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18685247.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 746.74 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 223154eb0c9eb4f348974b0fce7c77f5e6a29479d18fc1f4a0b177bf352b2e50
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```