
<!-- begin_TYPE -->

!!! from block [NUMBER](https://bscscan.com/block/NUMBER)
```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/geth.NUMBER.tar.gz -o geth.tar.gz
```


### checksum


!!! db size ZIP_SIZE gb, FULL_SIZE gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= CHECKSUM
```

<!-- end_TYPE -->