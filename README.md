# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.15)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.15) for sync


### download

<!-- begin_geth -->

!!! from block [22011742](https://bscscan.com/block/22011742)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.22011742.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.22011742.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 302.80 gb, 308.46 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 45bd78d5811d61f0305e23ea1958bb9496127b54f94e4719e9f0fd50416a6933
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.27.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.27.0) for sync


### download

<!-- begin_erigon -->

!!! from block [21968166](https://bscscan.com/block/21968166)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.21968166.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21968166.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 828.75 gb, 1217.78 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 0d1d8b91ef62b2d09c890cc90c986a534a25dff5959117b795558c322eeb9072
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
