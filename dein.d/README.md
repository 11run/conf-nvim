# dein.d

dein管理下にあるプラグインの設定を格納する

ファイル名には読み込みの優先度(priority)を先頭に，ファイル名，モジュールの読み込み遅延時間の順で
それぞれをハイフン(`-`)で区切り，拡張子に`.toml`を設定

`<priority>-<any name>-<load delay>.toml`
