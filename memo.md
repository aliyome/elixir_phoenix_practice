# MEMO

## Type Validation

- is_integer
- is_binary
- String.valid? --- UTF8 の文字列かどうかを調べる。ガード節では使えない

## Map

```ex
# 等価
a = %{name: "hoge", age: 1}
a = %{:name => "hoge", :age => 1}
# 別物
b = %{"name" => "foo", "age" => 2}

a[:name]  # "hoge"
a.name    # "hoge"
b["name"] # "foo"
b.name    # error

# Mapもimmutableなので新しくMapが作られる
a = %{a | age: 10}  # 更新っぽい使い方
a = a |> Map.merge(%{address: "fooooo"}  # 追加っぽい使い方(更新もされる)
```

## Keyword list

```ex
# 等価
a = [foo: 1, bar: 2]
a = [{:foo, 1}, {:bar, 2}]
a.foo   # error
a[:foo] # 1

# キーワードリストが引数の場合、角括弧が省略できる
IO.inspect([foo: 1, bar:2])
IO.inspect(foo:1, bar:2)
```

## IEx

- `i(target)`関数で色々と情報を表示できる

## Phoenix

- 上位のレイアウトテンプレートに値を埋め込むことができる
  - コントローラで`render("hoge.html", a: "foo")`としたとき、`a`は app.html.eex でも利用可能
- クエリパラメータとパスパラメータは同一変数
  - `render(conn, "show.html", name: params["name"])`
    - `?name=hoge`と`/hoge`どちらの場合も`params["name"]`で値を取得可能
- RAVT の順で作ると迷わなくて良い
  - Route, Action, View, Template

### Production mode

- `$ TEMP=$(mix phx.gen.secret)` で秘密鍵を作成する
- `$ mix deps.get --only prod` で依存ライブラリを取得
- `$ MIXENV=prod SECRET_KEY_BASE=$TEMP mix compile` でコンパイル
- `$ npm run deploy --prefix ./assets` でアセットのコンパイル
- `$ MIX_ENV=prod SECRET_KEY_BASE=$TEMP mix phx.digest` ダイジェスト付与
- `$ PORT=4000 MIX_ENV=prod SECRET_KEY_BASE=$TEMP mix phx.server` 起動

## Webpack

- module の use は下から上に(最後に宣言されたものが最初に)適用される
