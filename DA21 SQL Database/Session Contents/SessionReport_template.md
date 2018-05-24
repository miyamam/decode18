# セッションレポートテンプレート
__本情報の内容（添付文書、リンク先などを含む）は、作成日時点でのものであり、予告なく変更される場合があります.__
__セッション受講者の方の報告書の一部としてご利用ください。__

## DA21 まかせて! Azure SQL Database
### 基本機能のおさらい
SQL Database は PaaS の SQL Server.
多くの機能が SQL Server と互換性がある。
料金モデルとして、DTU 以外に vCore が登場。
Gen4, Gen5 の2種類ある。システムのサイジングが容易なものは DTU 、オンプレからの移行のような不均衡な構成をとる場合は柔軟な構成がとれる vCore が向いている。
vCore は SA のライセンス特典を持ち込める。
Basic, Standard,汎用 と Premium, Business Critical はワークロードサイズ以外に機能差や実装の違いがある。
Premium, Business Critical はストレージの実装が違う。geo レプリケーションを使用しなくてもセカンダリを読み取りマウントできる。

### What's New
#### 基本機能
VNETにトンネリング接続できる機能がある。
Managed Instance が登場 SQL Server SQL Database の中間。
バックアップの保存期間が10年までに。

#### セキュリティ
Azure Active Directoryで多要素認証。よりセキュリティを強固に。
データの検出と分類はGDPR対応を行うに当たってのデータの選別に利用可能。
透過的データ暗号化（TDE）のBYOK。Azure Key Vault 連動機能だが、TDEの鍵の暗号化を自分の鍵でできる機能。
脅威の検出、脆弱性評価。Security Center 謹製の機能でどちらも便利。

#### ツール
SQL Operations Studio が出た。Visual Studio Code をベース。
Open Sorce でマルチプラットフォーム。プラグインの使用やダッシュボードをカスタマイズできる。
実行計画も表示できる。
Azure Database Migration Service (DMS）オンプレからPaaSのサービスに移行できる。
DMSのサポートは SQL Server 2005-2017。SQL Server 2012 R2のEOAは来年なので移行方式のひとつの選択肢に。

### 全体
SQL Database はいろいろ面白い進化をし続けていて興味深い。
用途も多岐にわたるので今後も新しい利用を検討したい。