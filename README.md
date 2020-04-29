# NSL_practice

NSL練習用のリポジトリです。CPUが書けるようになりたい。

## Verilogへの変換方法

以下の手順で、Verilogにトランスレートされます。
nsl2vlは[オーバートーン株式会社のダウンロードページ](http://www.overtone.co.jp/support/downloads/)からダウンロードできます。個人情報を入力しないといけないけど。

```
nsl2vl adder32.nsl
nsl2vl shifter.nsl
nsl2vl driver.nsl -target driver -verisim2
```

## シミュレーションの実行方法

Icarus Verilogが使える環境を想定しています。以下の手順でシミュレーションを行ってください。

```
iverilog adder32.v shifter.v driver.v
vvp a.out
```

## translate.sh

iverilogまでを実行するシェルスクリプトがあります。そちらをご利用ください。