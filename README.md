# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20339515](https://bscscan.com/block/20339515)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20339515.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 562.83 gb, 574.98 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= efba9869502022b78de7dcd05c4435812cdcd4fa4ad95ffd4eb08d6a1055d463
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2022.07.04)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.07.04) for sync


### download

<!-- begin_erigon -->

!!! from block [20379687](https://bscscan.com/block/20379687)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20379687.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 755.06 gb, 1079.61 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 1db6bcbc41ec3a51da8d1edb90575d54a2a28dac214fd0fa9525ba8fcc676fa4
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
