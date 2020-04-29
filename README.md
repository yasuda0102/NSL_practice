# NSL_practice

NSL練習用のリポジトリです。CPUが書けるようになりたい。

## Verilogへの変換方法

コンパイルオプションを覚えるのが面倒だったので作った。
注意点としては、compile.shの第一引数は".nsl"を抜いたものにすること。

```
nsl2vl adder16.nsl
nsl2vl driver.nsl -target driver -verisim2
```

## シミュレーションの実行方法

Icarus Verilogが使える環境を想定しています。
以下の手順でシミュレーションを行ってください。
加算器の2つのオペランドは0xffffと0x0001です。
結果はオーバーフローし、0x0000となります。
また、キャリービットが立ちます。

```
iverilog adder16.nsl driver.nsl
vvp a.out
```
