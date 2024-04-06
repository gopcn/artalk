**[Blank Repl](https://replit.com)**
```bash
git clone        &&
shopt -s dotglob &&
mv -b        /* ./ &&
rm -rf *~         .git README.md .github &&
echo "部署成功，点击Run使用。"
```

**加密密钥 app_key**
```python
pip install pycryptodome
```
```python
from Crypto.Random import get_random_bytes
import binascii

def generate_session_key():
    # Directly return 32-byte random key for AES-256
    return get_random_bytes(32)

# Generate the key and convert it to HEX
session_key = generate_session_key()
hex_key = binascii.hexlify(session_key).decode('utf-8')
print("Generated Session Key (HEX):", hex_key)
```

**程序升级**
```bash
./artalk upgrade
```
执行 ```./artalk upgrade -f``` 携带参数 ```-f``` 来进行同版本号的补充更新。

**[模版配置文件](https://github.com/ArtalkJS/Artalk/blob/master/conf/artalk.example.zh-CN.yml)**
