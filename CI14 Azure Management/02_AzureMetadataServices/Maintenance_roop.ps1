#####################################################################
# AzureMetadataServices を利用したメインテナンス情報ロギング
#
# AzureMetadataServices に問い合わせを行い、イベントがあればTeamsに通知する 
#　テスト用に、イベントが無いときもTeams に通知しています。
# 
# $amsuri : AzureMetadataServices URI　 
# $message : AzureMetadataServices からの戻り値　(null 予定なし)
# $metadatapath : メタデータをセットしておくファイルパス（フルパス）
# $datetime : ログ用日付           
# $teamsuri : Teams の URI
# 
#####################################################################

while($true){
    # パラメータ設定
    $metadatapath = "C:\Logs\metadata.txt"
    $teamsuri = "https://outlook.office.com/webhook/"
    $amsuri = "http://169.254.169.254/metadata/scheduledevents?api-version=2017-04-02"
    
    $datetime = (Get-Date).ToString("yyyymmdd HH:mm:ss.fff")
    $postmessage = "メンテナンスを検知しました"

    # スケジュールされたイベントを取得
    $scheduledEvents = $scheduledEvents = Invoke-RestMethod -Headers @{"Metadata"="true"} -URI $amsuri -Method get

    # ファイル出力
    Write-Output "$datetime`t$scheduledEvents" | Out-File $metadatapath -Append
    $json = ConvertTo-Json @{ text="$postmessage`t$scheduledEvents"}

    # Events が入っていたらTeamsにポストする
     if ($scheduledEvents.Events -contains "EventId"){
        Invoke-RestMethod -Uri $teamsuri -Method Post -Body　$json -ContentType 'application/json' 
    }else{
        Invoke-RestMethod -uri $teamsuri -Method Post -body (ConvertTo-Json @{ text= 'メンテナンスはプランされていません'}) -ContentType 'application/json'
    }

    # 5分おやすみ
    Start-Sleep -Seconds 300
}