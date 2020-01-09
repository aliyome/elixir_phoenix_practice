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
- クエリパラメータとパスパラメータは同一変数
  - `render(conn, "show.html", name: params["name"])`
    - `?name=hoge`と`/hoge`どちらの場合も`params["name"]`で値を取得可能

## Webpack

- module の use は下から上に(最後に宣言されたものが最初に)適用される
