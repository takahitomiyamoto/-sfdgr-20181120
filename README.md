# Salesforce Developer Group ルーキー会 #13

## How to Use
- [Enable DevHub](https://developer.salesforce.com/docs/atlas.ja-jp.sfdx_setup.meta/sfdx_setup/sfdx_setup_enable_devhub.htm)
- [Install Salesforce CLI](https://developer.salesforce.com/docs/atlas.ja-jp.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm#sfdx_setup_install_cli)
- [Install VS Code](https://developer.salesforce.com/ja/tools/extension_vscode)

```bash
git clone https://github.com/takahitomiyamoto/sfdgr-20181120.git
cd sfdgr-20181120
code .

sudo chmod +x ./orgInit.sh  # if needed.

./orgInit.sh
```

## お題①
以下のソースコードを実行し、デバッグログに表示される文字列を答えてください。
```java
String message = 'ようこそ';
String name = 'Rookie会';
System.debug(LoggingLevel.INFO, name + 'に' + message);
```

→ [解答](https://github.com/takahitomiyamoto/sfdgr-20181120/tree/master/src/main/answer1)

## お題②
以下のソースコードのコンパイルエラーを解消してください。
```java
class TestClass{
    public IntgetNumber() {
        String name = 'test';
        if (name.equals('test')) {
            return 10;
            Boolean isSuccess= True
            return;
    }
    public IntgetNumber() {}
    public Account getAccountById(Id targetId) {
        return [SELECTId,Name,IndustryFROMAccountWHEREId = targetId];
    }
}
```

→ [解答](https://github.com/takahitomiyamoto/sfdgr-20181120/tree/master/src/main/answer2)


## お題③

→ [解答](https://github.com/takahitomiyamoto/sfdgr-20181120/tree/master/src/main/answer3)


## お題④

→ [解答](https://github.com/takahitomiyamoto/sfdgr-20181120/tree/master/src/main/answer4)


## お題⑤

→ [解答](https://github.com/takahitomiyamoto/sfdgr-20181120/tree/master/src/main/answer5)


## 出典
- [Salesforce Developer Group ルーキー会 #13](https://sfdgr.connpass.com/event/105935/)