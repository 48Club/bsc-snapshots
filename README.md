# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.2.7)](https://github.com/bnb-chain/bsc/releases/tag/v1.2.7) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [29353321](https://bscscan.com/block/29353321)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.29353321.tar.zst -O - | zstd -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.29353321.tar.zst -o none.tar.zst
```


### checksum

!!! db size 367.53 gb, 403.09 gb after decompression
```bash
> openssl sha256 none.tar.zst
SHA256(none.tar.zst)= 28e60f1a5005944f07cee4cf466b1df415744c19daf3fb2a6879de15e3da1e0a
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

!!! from block [29379621](https://bscscan.com/block/29379621)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.29379621.tar.zst -O - | zstd -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.29379621.tar.zst -o local.tar.zst
```


### checksum

!!! db size 777.33 gb, 834.86 gb after decompression
```bash
> openssl sha256 local.tar.zst
SHA256(local.tar.zst)= 851ffb576e764341f02dcbc0a8eacb264ed7ac0efb0935adfb0c504d4191665f
```

<!-- end_local -->


### uncompress


running a script: _`zstd -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
