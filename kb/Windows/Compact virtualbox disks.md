---
tags:
  - tech/linux/virtualbox
  - tech/windows/virtualbox
  - tech/linux/commands/virtualbox
---

# How to Compact Virtualbox Disks


## Compact Vdi Windows

```
sdelete.exe c: -C –s –p 2 -z
```

## Compatct Vdi Linux

```
$ VBoxManage modifyhd /caminho/para/o/hd/virtual.vdi --compact
```

---

# References

URL: <https://keep.google.com/u/0/#NOTE/16VnbvCzL_zAQssNaKEb-JKyEz8BZbRLV3cdCDMcvZW06CuAm65H0SJI1Ui4ZZgk>