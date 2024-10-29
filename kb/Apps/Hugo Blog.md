---
tags:
  - personal/career
---

## Install

To use the blog, first, [install Hugo](How%20to%20install%20Hugo%20on%20linux.md).

## Get Hugoblog and Theme Submodule

`git clone --recursive https://github.com/alansantosmg/hugoblog/hugoblog.git`

## Cloning Problems

### If Already Have Cloned Whitout Recursive Option

`git submodule update --init`

### If there Are Nested Submodules

`git submodule update --init --recursive`