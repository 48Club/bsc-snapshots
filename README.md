# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.2.5)](https://github.com/bnb-chain/bsc/releases/tag/v1.2.5) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [29179715](https://bscscan.com/block/29179715)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.29179715.tar.zst -O - | zstd -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.29179715.tar.zst -o none.tar.zst
```


### checksum

!!! db size 365.36 gb, 400.97 gb after decompression
```bash
> openssl sha256 none.tar.zst
SHA256(none.tar.zst)= e33628eebd44e26f030bf5f5a69075c5f65fd427db12e27d6a863cddd07b06fc
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

!!! from block [29188139](https://bscscan.com/block/29188139)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.29188139.tar.zst -O - | zstd -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.29188139.tar.zst -o local.tar.zst
```


### checksum

!!! db size 791.56 gb, 811.87 gb after decompression
```bash
> openssl sha256 local.tar.zst
SHA256(local.tar.zst)= c2cf224c4da2c19caf1608d968dc44dd7a7013115d144160e85fa6e287590c51
```

<!-- end_local -->


### uncompress


running a script: _`zstd -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
