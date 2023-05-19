# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.1.23)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.23) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [28310005](https://bscscan.com/block/28310005)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.28310005.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.28310005.tar.lz4 -o none.tar.lz4
```


### checksum

!!! db size 384.23 gb, 392.03 gb after decompression
```bash
> openssl sha256 none.tar.lz4
SHA256(none.tar.lz4)= 98cc450ca85f007ac74dea67522467366f814ff83071cfd4cddf79eae1051142
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

!!! from block [28317116](https://bscscan.com/block/28317116)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.28317116.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.28317116.tar.lz4 -o local.tar.lz4
```


### checksum

!!! db size 783.22 gb, 803.21 gb after decompression
```bash
> openssl sha256 local.tar.lz4
SHA256(local.tar.lz4)= 8cba121746da3c1bce4a2c4131aec7b78cafa5490c791d94e6cca5ec069173b6
```

<!-- end_local -->


### uncompress


running a script: _`lz4 -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
