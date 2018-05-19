#####################################################################
# Chocolatey:
# https://chocolatey.org
# PowerShell を管理者モードで開いて実行します
#
# 注意：全自動スクリプトではありません。備忘録コマンド集
#####################################################################

# Chocolatey のインストール
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Azure のツールセットをインストール
choco install boxstarter.azure

# 必要そうなものを順番にインストール
choco install sysinternals
choco install cyberduck
choco install rdm
choco install sql-operations-studio
choco install visualstudiocode
choco install sql-server-management-studio
choco install pgadmin4
choco install powerbi
choco install visioviewer
