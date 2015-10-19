hello_trema
===========

## 課題解答

###　その２

接続が停止された時に、"Bye 0xabc"と表示せよという課題であった。0xabcはスイッチのDIPDである。
接続停止時に呼び出されるハンドラである switch-disconnected　ハンドラを次のように記述した。

```
def switch_disconnected(dpid)
  logger.info "Bye #{dpid.to_hex}"
end
```

###　その１

コントローラの起動時に"Hi! HelloTrema"と表示させたいが、"HelloTrema"という文字列を二度記述してはならないという課題であった。
わたしは、クラス名として指定した"HelloTrema"という文字列を再利用するために、start　ハンドラ内に次のコードを追加した。

```
logger.info "Hi! #{self.clone}"
```


