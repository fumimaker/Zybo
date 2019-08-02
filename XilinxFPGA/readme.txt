「FPGAプログラミング大全　Xilinx編」書籍掲載データ
                         　　　　　　　　　　　　　　　作成：2016/12/1

●ご利用上の注意
　提供した回路記述、プログラムなどは自己責任の範囲でご利用ください。利用において
生じた損失や損害、その他いかなる事態も、出版社、著作権者、配布者は責任を負いかね
ます。

●開発ツールのバージョンについて
　本データはVivado HL WebPACK Edition 2016.2向けに作成されました。必ずこの
バージョンを用いて実行してください。他のバージョンでは、回路記述やCプログラムなど
流用できる可能性はありますが未確認です。また描画スクリプトはバージョンが一致しない
とエラーになります。

●データ内容と利用方法
　VivadoやSDKは非常に多くのファイルを生成しますので、本設計データは、本書の内容
を実施するのに必要なものに限定しました。本書を読んでプロジェクトを構築して動作を
確認して下さい。
　なおプロジェクトを構築せずにFPGAボードで試す方法は、本書Appendix II-4に記載
していますので、すぐにも動作させてみたい方はお試しください。

●トップフォルダ
・readme.txt ・・ このファイル
・Arty       ・・ Arty用設計データのフォルダ
・Basys3     ・・ Basys3用設計データのフォルダ
・Zybo       ・・ Zybo用設計データのフォルダ
・common     ・・ ボード間で差異がない設計データのフォルダ

●Artyフォルダ
・Arty_constraints.xdc  ・・ Arty用制約ファイル
・dai2-3sho　・・　第2章および第3章掲載データ
　- blink      ・・ LED点滅回路（2-1）
　- blinkspeed ・・ 可変速LED点滅回路（2-2）
　- pattern    ・・ パターン表示回路（2-3、3-2、3-3）
　- blinkdir   ・・ LED点滅回路の拡張（2-4）
　- gradation  ・・ グラデーション表示（2-4、3-4）
・dai5sho　・・　第5章掲載データ
　- blink_mb   ・・ MicroBlaze版LED点滅回路（5-2、5-3）
　- second     ・・ MicroBlazeのタイマー割り込み（5-4、5-5）
・dai6sho　・・　第6章掲載データ
　- blink_ip_mb  ・・ 自作IPによるMicroBlaze版LED点滅回路（6-1）
　- chardisp     ・・ 文字表示回路（6-2、6-3、6-4）
　- chardisp2    ・・ 反転・点滅付き文字表示回路（6-4）
　- blink_mult_mb・・ マルチCPU（コラムF）
・dai9sho　・・　第9章掲載データ
　- display      ・・ グラフィック表示回路（9-1～9-3、Appendix II-1）
・dai10sho ・・　第10章掲載データ
　- muladd_mb    ・・ 乗加算回路を組み込んだMicroBlazeシステム（10-3）

●Basys3フォルダ
・Basys3_constraints.xdc  ・・ Basys3用制約ファイル
・dai2-3sho　・・　第2章および第3章掲載データ
　- blink      ・・ LED点滅回路（2-1）
　- blinkspeed ・・ 可変速LED点滅回路（2-2）
　- pattern    ・・ パターン表示回路（2-3、3-2、3-3）
　- blinkdir   ・・ LED点滅回路の拡張（2-4）
　- gradation  ・・ グラデーション表示（2-4、3-4）
・dai5sho　・・　第5章掲載データ
　- blink_mb   ・・ MicroBlaze版LED点滅回路（5-2、5-3）
　- second     ・・ MicroBlazeのタイマー割り込み（5-4、5-5）
・dai6sho　・・　第6章掲載データ
　- blink_ip_mb  ・・ 自作IPによるMicroBlaze版LED点滅回路（6-1）
　- chardisp     ・・ 文字表示回路（6-2、6-3、6-4）
　- chardisp2    ・・ 反転・点滅付き文字表示回路（6-4）
　- blink_mult_mb・・ マルチCPU（コラムF）
・dai10sho ・・　第10章掲載データ
　- muladd_mb    ・・ 乗加算回路を組み込んだMicroBlazeシステム（10-3）

●Zyboフォルダ
・Zybo_constraints.xdc  ・・ Zybo用制約ファイル
・dai2-3sho　・・　第2章および第3章掲載データ
　- blink      ・・ LED点滅回路（2-1）
　- blinkspeed ・・ 可変速LED点滅回路（2-2）
　- pattern    ・・ パターン表示回路（2-3、3-2、3-3）
　- blinkdir   ・・ LED点滅回路の拡張（2-4）
　- gradation  ・・ グラデーション表示（2-4、3-4）
・dai5sho　・・　第5章掲載データ
　- blink_mb   ・・ MicroBlaze版LED点滅回路（5-2、5-3）
　- second     ・・ MicroBlazeのタイマー割り込み（5-4、5-5）
・dai6sho　・・　第6章掲載データ
　- blink_ip_mb  ・・ 自作IPによるMicroBlaze版LED点滅回路（6-1）
　- chardisp     ・・ 文字表示回路（6-2、6-3、6-4）
　- chardisp2    ・・ 反転・点滅付き文字表示回路（6-4）
　- blink_mult_mb・・ マルチCPU（コラムF）
・dai7sho　・・　第7章掲載データ
　- blink_zq     ・・ Zynq版LED点滅回路（7-2）
　- second_zq    ・・ Zynqのタイマー割り込み（7-3、7-4）
　- blink_ip_zq  ・・ 自作IPによるZynq版LED点滅回路（7-3）
　- chardisp_zq  ・・ Zynq版文字表示回路（7-4）
・dai9sho　・・　第9章掲載データ
　- display      ・・ グラフィック表示回路（9-1～9-4、コラムI）
　- display_XGA  ・・ XGA解像度のグラフィック表示回路（9-4）
・dai10sho ・・　第10章掲載データ
　- muladd_zq    ・・ 乗加算回路を組み込んだZynqシステム（10-3）
　- fillbox_ip   ・・ パターン描画回路IP（10-4）
　- display_fill ・・ パターン描画回路IPを組み込んだグラフィック表示回路（10-4）
　- fillbox2_ip  ・・ 書き込み禁止機能付きパターン描画回路IP（10-5）
　- display_fill2・・ fillbox2_ipを組み込んだグラフィック表示回路（10-5）
　- drawchar_ip  ・・ ドット文字描画IP（10-5）
　- display_dot  ・・ ドット文字描画IPを組み込んだグラフィック表示回路（10-5）

●commonフォルダ
・axisim     ・・ AXIバスのシミュレーション（8-2、8-3）
・muladd_ip  ・・ 高位合成用の乗加算回路IP（10-2）
