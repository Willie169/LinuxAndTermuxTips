Install:
```
pipx install gdown # or pip3 install gdown
```

Via Command Line:
```
$ gdown --help
usage: gdown [-h] [-V] [-O OUTPUT] [-q] [--fuzzy] [--id] [--proxy PROXY]
             [--speed SPEED] [--no-cookies] [--no-check-certificate]
             [--continue] [--folder] [--remaining-ok]
             url_or_id
...

$ # a large file (~500MB)
$ gdown https://drive.google.com/uc?id=1l_5RK28JRL19wpT22B-DY9We3TVXnnQQ
$ md5sum fcn8s_from_caffe.npz
256c2a8235c1c65e62e48d3284fbd384

$ # same as the above but with the file ID
$ gdown 1l_5RK28JRL19wpT22B-DY9We3TVXnnQQ

$ # a small file
$ gdown https://drive.google.com/uc?id=0B9P1L--7Wd2vU3VUVlFnbTgtS2c
$ cat spam.txt
spam

$ # download with fuzzy extraction of a file ID
$ gdown --fuzzy 'https://drive.google.com/file/d/0B9P1L--7Wd2vU3VUVlFnbTgtS2c/view?usp=sharing&resourcekey=0-WWs_XOSctfaY_0-sJBKRSQ'
$ cat spam.txt
spam

$ # --fuzzy option also works with Microsoft Powerpoint files
$ gdown --fuzzy "https://docs.google.com/presentation/d/15umvZKlsJ3094HNg5S4vJsIhxcFlyTeK/edit?usp=sharing&ouid=117512221203072002113&rtpof=true&sd=true"

$ # a folder
$ gdown https://drive.google.com/drive/folders/15uNXeRBIhVvZJIhL4yTw4IsStMhUaaxl -O /tmp/folder --folder

$ # as an alternative to curl/wget
$ gdown https://httpbin.org/ip -O ip.json
$ cat ip.json
{
  "origin": "126.169.213.247"
}

$ # write stdout and pipe to extract
$ gdown https://github.com/wkentaro/gdown/archive/refs/tags/v4.0.0.tar.gz -O - --quiet | tar zxvf -
$ ls gdown-4.0.0/
gdown  github2pypi  LICENSE  MANIFEST.in  pyproject.toml  README.md  setup.cfg  setup.py  tests
```

Via Python:
```
import gdown

# a file
url = "https://drive.google.com/uc?id=1l_5RK28JRL19wpT22B-DY9We3TVXnnQQ"
output = "fcn8s_from_caffe.npz"
gdown.download(url, output)

# same as the above, but with the file ID
id = "0B9P1L--7Wd2vNm9zMTJWOGxobkU"
gdown.download(id=id, output=output)

# same as the above, and you can copy-and-paste a URL from Google Drive with fuzzy=True
url = "https://drive.google.com/file/d/0B9P1L--7Wd2vNm9zMTJWOGxobkU/view?usp=sharing"
gdown.download(url=url, output=output, fuzzy=True)

# Cached download with identity check via MD5 (or SHA1, SHA256, etc).
# Pass postprocess function e.g., extracting compressed file.
md5 = "md5:fa837a88f0c40c513d975104edf3da17"
gdown.cached_download(url, output, hash=hash, postprocess=gdown.extractall)

# a folder
url = "https://drive.google.com/drive/folders/15uNXeRBIhVvZJIhL4yTw4IsStMhUaaxl"
gdown.download_folder(url)

# same as the above, but with the folder ID
id = "15uNXeRBIhVvZJIhL4yTw4IsStMhUaaxl"
gdown.download_folder(id=id)
```
