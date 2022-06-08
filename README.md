# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.10)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.10) for sync


### download

<!-- begin_geth -->

```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/geth.18502910.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 0.00 gb, 0.00 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= d5ce200d88aed7b784c5b72da80f5549b73f5641e5c9ab6e72d922819412a637
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->


```zsh
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/erigon.18485438.tar.gz -o erigon.tar.gz
```


### checksum

!!! db size 0.00 gb, 0.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 278b98665c5e020cf250caccd546e6901893bb088764d549b973824eef3fb363
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```