<div align=center>

# [Artalk](https://github.com/ArtalkJS/Artalk)-[Replit](https://replit.com)
</div>

**Blank Repl**

```bash
git clone https://github.com/gopcn/artalk-replit.git &&
shopt -s dotglob &&
mv -b artalk-replit/* ./ &&
rm -rf *~ artalk-replit .git README.md .github &&
echo "部署成功，点击Run使用。"
```

**加密密钥 app_key**
```python
import secrets
import string

def generate_app_key(length):
    chars = string.ascii_letters + string.digits
    return ''.join(secrets.choice(chars) for _ in range(length))

# 生成一个长度为32的随机app_key
app_key = generate_app_key(32)
print(app_key)
```

**程序升级**
```bash
./artalk upgrade
```
执行 ```./artalk upgrade -f``` 携带参数 ```-f``` 来进行同版本号的补充更新。

**[模版配置文件](https://github.com/ArtalkJS/Artalk/blob/master/conf/artalk.example.zh-CN.yml)**