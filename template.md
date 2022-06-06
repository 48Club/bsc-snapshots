
<!-- begin_geth -->

```bash
aria2c -s16 -x16 -k1M https://snapshots.bnb48.club/geth.GETH_NUMBER.tar.gz -o geth.tar.gz
```


### checksum


!!! db size GETH_ZIP_SIZE gb, GETH_FULL_SIZE gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= GETH_CHECKSUM
```

<!-- end_geth -->

<!-- begin_erigon -->


```zsh
aria2c -s16 -x16 -k1M https://snapshots.bnb48.club/erigon.ERIGON_NUMBER.tar.gz -o erigon.tar.gz
```


### checksum

!!! db size ERIGON_ZIP_SIZE gb, ERIGON_FULL_SIZE gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= ERIGON_CHECKSUM
```

<!-- end_erigon -->