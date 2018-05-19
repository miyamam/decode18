# 概要
AzureMetadataServices へのスケジュールされたイベントの問い合わせを行います。

1.  AzureMetadataServices.ps1(デモで実施したスクリプト)
2.  Maintenance_roop.ps1(メンテナンスをループ処理し、Teamsで連携するためのスクリプト)

# 利用方法
## 1.AzureMetadataServices.ps1
Azure 上の Windows の仮想マシンで PowerShell を管理者権限で開きます。
状態を見ながらコマンドを実行します。

## 2.Maintenance_roop.ps1
### Teams の Webhook 用 URI を設定します。
Teams の任意のチームの任意の Channel 上で ...メニューの __connecters__ をクリックします。



# 参考リンク
-   [Azure Metadata Service: Windows VM のスケジュールされたイベント](https://docs.microsoft.com/ja-jp/azure/virtual-machines/windows/scheduled-events)
-   [自分の VM に何が起きるか把握する Scheduled Events Instance Metadata Service のご紹介](https://blogs.technet.microsoft.com/jpaztech/2017/10/04/instance-metadata-service/)
