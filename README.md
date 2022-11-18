# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.17)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.17) for sync


### download

<!-- begin_geth -->

!!! from block [23141244](https://bscscan.com/block/23141244)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.23141244.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.23141244.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 319.63 gb, 325.64 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= e957d05f26fe75b75c3a0e2eafd13c5414d573400da41d6d2d751074f46b3f05
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.30.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.30.0) for sync


### download

<!-- begin_erigon -->

!!! from block [23140528](https://bscscan.com/block/23140528)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.23140528.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.23140528.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 892.69 gb, 1319.97 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 6d4d68a02904084b29ba6ef9557f11c6549ff132e05743177debfd2e47a19c01
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
