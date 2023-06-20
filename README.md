# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.2.5)](https://github.com/bnb-chain/bsc/releases/tag/v1.2.5) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [29236106](https://bscscan.com/block/29236106)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.29236106.tar.zst -O - | zstd -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.29236106.tar.zst -o none.tar.zst
```


### checksum

!!! db size 363.15 gb, 398.00 gb after decompression
```bash
> openssl sha256 none.tar.zst
SHA256(none.tar.zst)= d40506fe5f10138166595a8948be75d759acb6f5bd06f1cf7f0364e87eced275
```

<!-- end_none -->

### uncompress


running a script: _`zstd -cd none.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## Full node


### download

<!-- begin_local -->

!!! from block [29236433](https://bscscan.com/block/29236433)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.29236433.tar.zst -O - | zstd -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.29236433.tar.zst -o local.tar.zst
```


### checksum

!!! db size 771.09 gb, 828.13 gb after decompression
```bash
> openssl sha256 local.tar.zst
SHA256(local.tar.zst)= e2a8d977744cee3acf2d23e2dd9825e18ac6ed0c0d746f2c26e76ad277ef18d4
```

<!-- end_local -->


### uncompress


running a script: _`zstd -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
