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

!!! from block [18773427](https://bscscan.com/block/18773427)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18773427.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 743.76 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 4a4ff77860559cca6a7ead16c5a1afb9bd165e700706814d9f50572e80a5883a
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
