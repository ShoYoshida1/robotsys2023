# plusコマンド

![test](https://github.com/ShoYoshida1/robotsys2023/actions/workflows/test.yml/badge.svg)

このリポジトリはrobotsys2023用の練習リポジトリです.


## 機能説明
入力された数字の合計,総乗を出力するプログラム.Decimal関数を用いているため小数同士の計算において誤差が起きないようになっています.

## インストール手順
* クローンしてください.
```
$ git clone git@github.com:ShoYoshida1/robotsys2023.git
```

* robotsys2023ディレクトリに変更してください.
```
$ cd robotsys2023
```

* ディレクトリ内で実行権限を与えてください.問題がなければ実行できます.
```
$ chmod +x plus
```


## 実行例
* 例1
```
$ seq 5 | ./plus
合計: 15.0, 総乗: 120.0
```
* 例2
```
$ seq -0.1 0.2 0.3 | ./plus
合計: 0.3, 総乗: -0.003
```

## 必須ソフト
* python
	* テスト済み:3.7~3.10

## テスト環境
* Ubuntu 20.04

## ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記URLのスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	* https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022
* © 2023 Sho Yoshida



