# Anzenia - 外国人労働者向け安全情報共有プラットフォーム
建設現場の安全管理を支援する多言語対応Webアプリケーションです。  
外国人労働者への情報伝達不足による軽微な事故の防止を目的としています。

---

## 🎯 解決したい課題
- 建設現場における外国人労働者の労災事故削減  
- カルチャーや言語の違いによる情報伝達不足の解消

---

## 🚀 主な機能
- 多言語対応（日本語 / 英語 / ベトナム語 など）  
- 安全情報の即時共有  
- 画像付き作業手順書の配信  
- 緊急連絡機能  

---

## 🛠 使用技術

| 分野           | 技術                                             |
|----------------|------------------------------------------------|
| Backend        | Ruby 3.1.2 / Rails 7.2.1.1 / PostgreSQL / MySQL |
| Frontend       | HTML5 / CSS3 / JavaScript / Bootstrap / Tailwind CSS |
| Infrastructure | Docker / Docker Compose                          |

---

## 🏃 セットアップ手順

```bash
git clone https://github.com/hayashida333/Anzenia.git
cd Anzenia
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server

🔑 ポートフォリオ用「管理者」ログイン情報

Email: portfolio@example.com
Password: portfolio123

youtube:　https://www.youtube.com/watch?v=YK-kDZUdRrY
