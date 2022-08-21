# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20640948](https://bscscan.com/block/20640948)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20640948.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 566.43 gb, 578.67 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= fb74ed53474bfb9d48de74fdeabdf0cfc632ae99824e2b9749dfda6a289bfcf9
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2022.08.02)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.08.02) for sync


### download

<!-- begin_erigon -->

!!! from block [20637061](https://bscscan.com/block/20637061)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20637061.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 758.09 gb, 1085.80 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 0a1410c92e9c678aa0085e8a91f29770e6bfbd1fc282f856c60ded7468d6dab9
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
