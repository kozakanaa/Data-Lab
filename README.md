# DockerfileのREADME

このDockerfileはUbuntuをベースにしており、画像処理やデータ解析に必要なパッケージとAnaconda3をインストールします。

## 基本情報

- **ベースイメージ**: `ubuntu:latest`

## インストールされる主なパッケージ

- libsm6
- libxext6
- libxrender-dev
- libglib2.0-0
- sudo
- wget
- vim

## Anaconda3のインストール

Anacondaはデータ科学、機械学習、科学計算などに広く使われるPythonのディストリビューションです。以下の手順でインストールされます。

1. /optにワークディレクトリを設定
2. Anaconda3のインストーラをダウンロード
3. インストーラを実行し、/opt/anaconda3にインストール
4. インストーラの削除

Anaconda3のインストール後、パスが設定され、`/opt/anaconda3/bin`がパスに追加されます。

## Pythonパッケージのインストール

以下のPythonパッケージがインストールされます。

- opencv-python: 画像処理ライブラリ
- nibabel: 医用画像ファイルを扱うためのライブラリ

これらはpipを通じて最新版にアップグレード後にインストールされます。

## ワークディレクトリの作成

Dockerコンテナのルートに`/work`という名前のディレクトリが作成され、作業用のディレクトリとして利用可能です。

## デフォルトコマンド

コンテナ起動時には、Jupyter Labが実行されます。以下のオプションがデフォルトで設定されています。

- `--ip=0.0.0.0`: すべてのインターフェースでJupyter Labがリッスン
- `--allow-root`: rootユーザーとしての実行を許可
- `--LabApp.token=''`: トークンなしでアクセス可能

コンテナを起動した後、ブラウザを通じてJupyter Labにアクセスできるようになります。
