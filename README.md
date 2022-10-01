# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.13)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.13) for sync


### download

<!-- begin_geth -->

!!! from block [21780796](https://bscscan.com/block/21780796)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.21780796.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21780796.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 301.03 gb, 306.54 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 072d732fd212d23d45605dad53fbe22f445fc2dc52604fe28ff5f324d9bbd569
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2022.09.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.09.01) for sync


### download

<!-- begin_erigon -->

!!! from block [21815695](https://bscscan.com/block/21815695)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.21815695.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21815695.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 825.37 gb, 1213.76 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 682bb7d8477ceddbeb4af35dc512f593c6e5f2db6f71797ac6f1d7901dc1cc72
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
