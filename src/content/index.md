---
title: ポートフォリオ
---

# Kenichiro Sasaki

<section>

# 保有資格

- 基本情報技術者試験合格 (2024年6月)
- CCNA (2024年8月)
- LPIC 1 (2024年9月)
- AWS Solutions Architect - Associate C03 (2024年11月)
</section>

------- 

# 制作物

<section>

# ToDo リストアプリ (Webアプリケーション開発)

<img src="/img/todos.png">

- サイトデモ: [ToDo リストアプリ](https://b.sasasa.org)
- ソースコード: [github](https://github.com/kssk4123/todoapp_go)

## 概要

インフラ学習の一環として、そこに載せるシンプルなタスク管理アプリを開発しました。フロントエンドからバックエンド、インフラまで設計・構築しました。

## 特徴・取り組み

### クラウド環境でのデプロイ

アプリケーションはAWS EC2上で稼働しており、Ubuntu 24.04環境を使用して、開発から運用までの全工程を経験しました。セキュリティ対策として、SSHキー認証やファイアウォール設定も実施。SSL証明書の取得は Let's Encrypt を使用し、更新は certbot, cron で自動化。

動的コンテンツを効率的に配信するため、Nginx をリバースプロキシとして設定し、Gin フレームワークで構築した Go アプリケーションを外部公開しました。

ドメインレジストラでDNSレコードを設定（Aレコード で AWS Elastic IP アドレスにマッピング）。 Nginxの server_name ディレクティブでサブドメインを指定しています。

### REST API設計

API設計においては、エンドポイントの設計からHTTPメソッドの最適化（GET/POST/PUT/DELETE）まで、直感的で拡張性の高い構造を意識しました。

タスク管理の他に、ユーザーの登録、削除、セッションによる状態保持といった基礎的な機能を実装するよう努めました。

### 非同期処理

フロントエンドでは JavaScript の fetch API を活用し、ページの再読込を避けることで、ユーザー体験を向上。特にタスクの追加や削除における非同期処理の実装に注力しました。

### シンプルなデザイン

ユーザーフレンドリーなデザインを心掛け、CSSのみでレスポンシブ対応を実現。

## 使用技術

- バックエンド: Go (version 1.23.4 linux/amd64), フレームワーク: Gin
- フロントエンド: JavaScript
- データベース: MySQL 8.0
- デザイン: CSS3
- インフラ: AWS EC2 (Ubuntu 24.04)
- Web サーバー: Nginx
- Docker (開発時。 MySQL, Air)

### 学習と課題

API設計や非同期処理について実践を通じて理解を深めました。次のステップとして、Dockerを活用したコンテナ化やCI/CDパイプラインの構築に挑戦したいと考えています。

</section>

---

<section>

# 競馬データベースサイト (Webアプリケーション開発)

<img src="/img/take_data.png">

- サイトデモ: [重賞データベース](https://db.mykeiba.net)
- ソースコード: [github](https://github.com/kssk4123/keiba-database.git)

## 概要

競馬データの分析・閲覧を目的としたデータベースサイトを構築しました。膨大なデータ量の管理と高速な検索機能を実現するため、効率的なデータベース設計とアルゴリズムの工夫に注力しました。

## 特徴・取り組み

### 効率的なデータベース設計

SQLiteを採用し、膨大なデータに対するパフォーマンスを意識した設計を実現。複雑なクエリ処理や結合の最適化を行い、インデックスの適切な配置をして検索速度を大幅に向上、高速なページ表示を実現できました。

### データ収集の自動化

データの収集に Python、加工に Go でスクリプトを作成し半自動化。作業時間の短縮とデータの一貫性を確保しました。

### インタラクティブな操作性

JavaScriptを活用してデータの絞り込みや並べ替え機能を実装。クライアント側での操作がリアルタイムで反映されるようにしました。また、表示するDOMの量を調節することで快適なユーザー体験を提供しました。

## 使用技術

- バックエンド: Go (version 1.23.4), フレームワーク: fiber
- フロントエンド: JavaScript
- データベース: SQLite
- インフラ: レンタルサーバー (linux)
- データ収集・加工: Python, Go
- デザイン: CSS3
- デプロイ: シェルスクリプト、rsync, Git Hooks

## 開発環境

エディタ: Neovim

## 学習と課題

データベース設計やクエリ最適化の知識を実践的に習得しました。特に、結合処理の高速化やインデックス配置がパフォーマンスに与える影響を深く理解。次のステップとして、大量データの分散処理やクラウド環境でのデータストレージ活用（例: Amazon RDS）を学びたいと考えています。

</section>