# neo-c compiler language

```
#include <stdio.h>
#include <stdlib.h>

int main() 
{
    printf(string("HO!") * 3);

    exit(0);
}
```

1. Compatibility for header file of C language. also using C preprocessor. Some compatibility for C Language.

2. Automatically free for heap system like Rust. GCless. Including vector, list, map, string, regex libraries.

3. Generics. method Generics, inline function, method block with type infference.

4. Mixin-layers system. You can create apllication with overlaying layers. See wi or tiny application sample included in this source code. 

This is constructing. Maybe unstable for use.

version 0.9.9

* INSTALL

```
./configure --with-optimize
make
make install
```

To debug the heap, try compiling the application with ./configure --with-debug. The status of the heap is output to a file called memleak_debug.txt.

# neo-c コンパイラ言語

```
#include <stdio.h>
#include <stdlib.h>

int main() 
{
    printf(string("HO!") * 3);

    exit(0);
}
```

1. C言語とある程度互換性があります。特にヘッダーファイルをincludeするのには問題ないでしょう。Cプリプロセッサーも動きます。

2. Rustと同じくGCを使わないヒープシステムがあります。オブジェクトは自動的にfreeされます。vector, list, map, string, regexのライブラリがあります。

3. ジェネリクス、メソッドジェネリクス、inline関数、型推論を行うメソッドブロックがあります。

4. Mixin-layersシステムを備えます。アプリケーションを実装する場合レイヤーを重ねるように簡単なアプリケーションから実装し始めて、レイヤーを重ねてアプリケーションを拡張していけます。wiとtinyというアプリケーションがソースコードに含まれているので、見てみてください。

* インストール

```
./configure --with-optimize
make
make install
```

ヒープのデバッグを行う場合、./configure --with-debugでアプリケーションをコンパイルしてみてください。memleak_debug.txtというファイルにヒープの状況が出力されます。


