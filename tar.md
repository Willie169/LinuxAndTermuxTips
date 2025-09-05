`tar` is the standard Unix/Linux tool to **archive** and **extract** files. It doesn’t compress by itself, but it’s usually combined with compression (`gzip`, `bzip2`, `xz`, `zstd`).

### **Basic Syntax**

```bash
tar [options] -f archive.tar files...
```

* `-f archive.tar` → specifies the archive file (must be last before file list).
* Common options:

  * `c` → create
  * `x` → extract
  * `t` → list contents
  * `v` → verbose (show files)
  * `z` → use gzip (`.tar.gz`)
  * `j` → use bzip2 (`.tar.bz2`)
  * `J` → use xz (`.tar.xz`)
  * `--zstd` → use zstd (`.tar.zst`)

---

### **Creating an Archive**

```bash
tar -cvf archive.tar file1 dir1 file2
```

* Creates `archive.tar` containing `file1`, `file2`, and `dir1`.

With compression:

```bash
tar -czvf archive.tar.gz file1 dir1
tar -cJvf archive.tar.xz file1 dir1
```

---

### **Extracting an Archive**

```bash
tar -xvf archive.tar
```

* Extracts into current directory.

With compression:

```bash
tar -xzvf archive.tar.gz
tar -xJvf archive.tar.xz
```

Extract to a specific directory:

```bash
tar -xvf archive.tar -C /path/to/dir
```

---

### **Listing Contents Without Extracting**

```bash
tar -tvf archive.tar
```

---

### **Appending Files to an Archive**

```bash
tar -rvf archive.tar newfile
```

---

### **Update Only if Newer**

```bash
tar -uvf archive.tar file
```
