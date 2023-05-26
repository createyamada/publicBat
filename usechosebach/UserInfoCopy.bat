@echo off
REM コマンドプロンプトはUTF-8のため文字コードをUTF-8に変更
CHCP 65001
:start
ECHO "0:テスト内容1"
ECHO "1:テスト内容2"
REM 選択値を格納する変数宣言
SET answer=
SET /P answer=内容を選択してください。

REM 選択内容により条件分岐
IF %answer%==0 (
    REM 0選択の場合
    START "" https://google.com
    SET /P user="テストユーザー1"<NUL|clip
    SET /P test=0の内容のユーザ情報をコピーしました。貼り付け後Enterキーを押してください。
    SET /P pass="テストパスワード1"<NUL|clip
    SET /P tests1=0の内容のパスワード情報をコピーしました。貼り付け後Enterキーを押してください。
    REM　初めに戻る
    GOTO start
) ELSE IF %answer%==1 (
    REM 1選択の場合
    START "" https://google.com
    SET /P user="テストユーザー2"<NUL|clip
    SET /P test=1の内容のユーザ情報をコピーしました。貼り付け後Enterキーを押してください。
    SET /P pass="テストパスワード2"<NUL|clip
    SET /P tests1=1の内容のパスワード情報をコピーしました。貼り付け後Enterキーを押してください。
    REM　初めに戻る
    GOTO start
) ELSE (
    ECHO "選択している番号は登録されていません。"
    ECHO "正しい番号を再度入力してください。"
    GOTO　start
)