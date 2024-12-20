# system_usage_logger

## 使い方
### 手順1: 実行ポリシーの設定
デフォルトではスクリプト実行が制限されています。以下の手順で実行ポリシーを変更します。

PowerShellを管理者として実行します。

スタートメニューで「PowerShell」と検索→右クリック→「管理者として実行」。
以下のコマンドを入力して実行ポリシーを変更します:

> Set-ExecutionPolicy RemoteSigned

実行時に「すべて」に対してYを入力して確定します。
注意: 実行ポリシーの変更は一時的に行い、スクリプト実行後に必要に応じて元の設定に戻してください。

### 手順3: スクリプトの実行
PowerShellを通常のユーザーとして開きます。
スクリプトが保存されているディレクトリに移動します。例えば、スクリプトがC:\Scriptsにある場合:
> cd C:\Scripts

スクリプトを実行します:
> .\system_usage_logger.ps1

ポイント: ファイル名の前に .\ を付ける必要があります。

### 手順4: 実行の確認
スクリプトを実行すると、同じディレクトリ内にsystem_usage_log.txtというログファイルが生成されます。スクリプトが動作している間は、ログファイルにCPU、メモリ、ディスクの使用率が10秒ごとに追記されます。

### 手順5: スクリプトの停止
スクリプトは無限ループで動作します。停止するには、PowerShellのウィンドウを閉じるか、以下の方法で中断します。

PowerShellの実行中にCtrl + Cを押す。
またはStop-Processコマンドを使ってスクリプトプロセスを停止します。