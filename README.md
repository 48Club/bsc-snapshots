# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18660302](https://bscscan.com/block/18660302)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18660302.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 529.06 gb, 562.25 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 2367d61758928955ae8bfde302cac77973135f031d976a2bb85647cc9c0097ce
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18654996](https://bscscan.com/block/18654996)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18654996.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 747.70 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 984e91adcd2c6c89702862ca9496aac1b54b6d000ba7d8c7440cae2ae580fce6
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```