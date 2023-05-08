# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.1.23)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.23) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [28006569](https://bscscan.com/block/28006569)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.28006569.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.28006569.tar.lz4 -o none.tar.lz4
```


### checksum

!!! db size 376.83 gb, 384.36 gb after decompression
```bash
> openssl sha256 none.tar.lz4
SHA256(none.tar.lz4)= fc742469a7d6dfaa3ebafd11feb5e78bc025c3b09ca4487630eaac0c04cff89a
```

<!-- end_none -->

### uncompress


running a script: _`lz4 -cd none.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## Full node


### download

<!-- begin_local -->

!!! from block [28008609](https://bscscan.com/block/28008609)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.28008609.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.28008609.tar.lz4 -o local.tar.lz4
```


### checksum

!!! db size 770.83 gb, 790.41 gb after decompression
```bash
> openssl sha256 local.tar.lz4
SHA256(local.tar.lz4)= 95a0e5c0110ebd47e409638db53f07cbbbbabeb6d318e7fc2ad3a0dd73f696e8
```

<!-- end_local -->


### uncompress


running a script: _`lz4 -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
