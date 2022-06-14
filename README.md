# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18675861](https://bscscan.com/block/18675861)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18675861.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 527.61 gb, 560.79 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= c498faa37badddc2cf4bef40b038de1be35b4ec29215f3675198e94b544b8c22
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