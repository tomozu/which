# README

# ファッション系SNSアプリ

## 概要
ファッションコーディネートで二択で選べない方のためのお助けアプリケーションです

## コンセプト
ファッションコーディネートをするためのSNSアプリ

## バージョン
ruby 2.4.0 rails 5.1.1

## 機能一覧
- [ ] ログイン機能   
   - [ ] ログイン後に閲覧できる仕様
- [ ] ユーザー登録機能
   - [ ] ニックネーム、メール、パスワード、性別、年齢
- [ ] 投稿一覧表示機能
   - [ ] ユーザーの投稿が一覧に表示されている
   - [ ] 投票"like"の数を表示
   - [ ] 投票"like"はページ遷移無しでできる
   - [ ] ユーザーの投稿に投票"like"ができる
   - [ ] 投票"like"後に取り消しが可能である
- [ ] 画像投稿機能
   - [ ] 一度の投稿に2枚の画像が投稿できる
   - [ ] ユーザーの情報（ニックネーム、性別、年齢）、目的、場所、理想を表示
- [ ] 投稿編集機能
- [ ] 投稿削除機能
   - [ ] 編集、削除は投稿者のみ実行可能

## カタログ設計
https://docs.google.com/spreadsheets/d/e/2PACX-1vTxjp0oZCBtupLIIuqNzp7SCQGUpmc4RJ2cLRj_Te7rxKePonAL5apWEWbjPl0GWp9daHC_IHfK0oVY/pubhtml?gid=0&single=true

## テーブル定義
https://docs.google.com/spreadsheets/d/e/2PACX-1vTxjp0oZCBtupLIIuqNzp7SCQGUpmc4RJ2cLRj_Te7rxKePonAL5apWEWbjPl0GWp9daHC_IHfK0oVY/pubhtml?gid=652884054&single=true

https://docs.google.com/spreadsheets/d/e/2PACX-1vTxjp0oZCBtupLIIuqNzp7SCQGUpmc4RJ2cLRj_Te7rxKePonAL5apWEWbjPl0GWp9daHC_IHfK0oVY/pubhtml?gid=408352039&single=true

## 画面遷移図
https://docs.google.com/spreadsheets/d/e/2PACX-1vTxjp0oZCBtupLIIuqNzp7SCQGUpmc4RJ2cLRj_Te7rxKePonAL5apWEWbjPl0GWp9daHC_IHfK0oVY/pubhtml?gid=965846329&single=true

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/e/2PACX-1vTxjp0oZCBtupLIIuqNzp7SCQGUpmc4RJ2cLRj_Te7rxKePonAL5apWEWbjPl0GWp9daHC_IHfK0oVY/pubhtml?gid=1087955723&single=true

## 使用予定Gem
* Kaminari

## 他
devise、 Ajax 使用予定
