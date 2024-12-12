# ログの保存先を指定（スクリプトと同じディレクトリ）
$logFile = "$PSScriptRoot\system_usage_log.txt"

# 定期的にリソース情報を取得
while ($true) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $cpu = (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples.CookedValue
    $memory = Get-Counter '\Memory\Available MBytes'
    $disk = Get-Counter '\LogicalDisk(_Total)\% Disk Time'

    $logEntry = "$timestamp, CPU: $([math]::Round($cpu, 2))%, Memory: $($memory.CounterSamples.CookedValue) MB, Disk: $([math]::Round($disk.CounterSamples.CookedValue, 2))%"
    Add-Content -Path $logFile -Value $logEntry

    # 10秒ごとに記録
    Start-Sleep -Seconds 10
}
