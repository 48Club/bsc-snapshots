# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.21)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.21) for sync


### download

<!-- begin_geth -->

!!! from block [26898525](https://bscscan.com/block/26898525)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.26898525.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.26898525.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 358.97 gb, 365.80 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 3cc4bb1caa4ddb2a22a45223f133209fe0a9b5df7270ea35b4c665935151b389
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.42.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.42.0) for sync


### download

<!-- begin_erigon -->

!!! from block [26896696](https://bscscan.com/block/26896696)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.26896696.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.26896696.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 979.92 gb, 1523.76 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= df23bf5b55ebf737352849687575c677c2ec124b588bfea6c2b4af9ae92083db
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
