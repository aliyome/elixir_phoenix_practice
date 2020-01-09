# MEMO

## Type Validation

- is_integer
- is_binary
- String.valid? --- UTF8 の文字列かどうかを調べる。ガード節では使えない

## IEx

- `i(target)`関数で色々と情報を表示できる

## Phoenix

- 上位のレイアウトテンプレートに値を埋め込むことができる
  - コントローラで`render("hoge.html", a: "foo")`としたとき、`a`は app.html.eex でも利用可能
