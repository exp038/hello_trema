演習２レポート課題 10/14

コントローラの起動時に"Hi! HelloTrema"と表示させたいが、"HelloTrema"という文字列を二度記述してはならないという課題であった。
わたしは、クラス名として指定した"HelloTrema"という文字列を再利用するために、

logger.info "Hi! #{self.clone}"

というコードを追加した。
