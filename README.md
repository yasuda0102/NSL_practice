# NSL_practice

NSL練習用のリポジトリです。CPUが書けるようになりたい。

## Verilogへの変換方法

以下の手順で、Verilogにトランスレートされます。
nsl2vlは[オーバートーン株式会社のダウンロードページ](http://www.overtone.co.jp/support/downloads/)からダウンロードできます。個人情報を入力しないといけないけど。

```
./translate.sh
```

## シミュレーションの実行方法

Icarus Verilogが使える環境を想定しています。以下の手順でシミュレーションを行ってください。

```
vvp a.out
```
