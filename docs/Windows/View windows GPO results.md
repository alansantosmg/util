---
tags:
  - tech/windows/gpo
---

# View GP Results

## Windows GUI
Run `rsop.msc` to view GPresults. 

## CMD

```batch
gpresult /H GPReport.html
gpresult /H %homepath%/Documents/GPReport.html
```
