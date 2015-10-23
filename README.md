
Run rails: `rails s`

Without action cache:

```bash
✗ curl -s -I http://127.0.0.1:3000/without_cache.json  | grep "^Content-Type:"
Content-Type: application/json; charset=utf-8
✗ curl -s -I -H "Accept: application/json" http://127.0.0.1:3000/without_cache  | grep "^Content-Type:"
Content-Type: application/json; charset=utf-8
```

With action cache:

```bash
✗ curl -s -I http://127.0.0.1:3000/with_cache.json  | grep "^Content-Type:"
Content-Type: application/json; charset=utf-8
✗ curl -s -I -H "Accept: application/json" http://127.0.0.1:3000/with_cache  | grep "^Content-Type:"
Content-Type: text/html; charset=utf-8

```
