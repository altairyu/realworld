# RealWorld
ステップ1まで実装。

## 課題内容
（原文ママ）

ブログプラットフォームを作る [RealWorld](https://github.com/gothinkster/realworld/tree/main) という OSS のプロジェクトがあります。

RealWorld は実世界と同じ機能を持つプラットフォームを作ることで、学習したいフレームワークの技術を習得することを目的としてたプロジェクトです。

ここでは、[RealWorld の バックエンドの API](https://realworld-docs.netlify.app/docs/specs/backend-specs/introduction) の仕様を満たす Rails API を作成します。

ステップ1とステップ2に分かれます。時間に余裕がない場合はステップ1に進んでください。時間に余裕がある場合はステップ2に進んでください。ステップ1を終えてからステップ2に進む設計にはなっていないため、最初にどちらに進むかを選択してください。

ステップ1は RealWorld の API の仕様を部分的に満たした API を作成します。具体的には、認証機能のない簡易バージョンの作成になります。

ステップ2は RealWorld の API の仕様を満たす API を作成します。認証機能付きのバージョンの作成になります。

基本的にはステップ2を進めていくことを想定していますが、時間に余裕がない場合はステップ1を進めてください。

[RealWorld のドキュメント](https://realworld-docs.netlify.app/docs/intro)  に目を通した上で、ステップに進んでください。

## ステップ1
RealWorld　の API のうち、次のエンドポイントを実装してください。

- [Create Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#create-article)
- [Get Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#get-article)
- [Update Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#update-article)
- [Delete Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#delete-article)

なお、Article に関わる要素のうち、認証機能及び著者、タグ、お気に入り(favorite) は実装しなくてよいものとします。
