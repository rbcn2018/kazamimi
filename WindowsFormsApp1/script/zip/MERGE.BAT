@ECHO OFF
REM 結合バッチファイル：div2.exe により生成

ECHO 分割されたファイルを復元します

IF NOT EXIST sample_3.001  GOTO ERR1
IF NOT EXIST sample_3.002  GOTO ERR1
IF NOT EXIST sample_3.003  GOTO ERR1
IF NOT EXIST sample_3.004  GOTO ERR1
IF NOT EXIST sample_3.005  GOTO ERR1
IF NOT EXIST sample_3.006  GOTO ERR1
IF     EXIST sample_3.atc  GOTO ERR2

REN sample_3.001 sample_3.atc
COPY /B sample_3.atc+sample_3.002+sample_3.003+sample_3.004+sample_3.005
COPY /B sample_3.atc+sample_3.006
DEL sample_3.002
DEL sample_3.003
DEL sample_3.004
DEL sample_3.005
DEL sample_3.006

ECHO このバッチファイルも消してください
GOTO END

:ERR1
ECHO ファイルが一部存在しません
ECHO 処理を中止します
GOTO END

:ERR2
ECHO 復元先のファイルが既に存在しています
ECHO 処理を中止します
GOTO END

:END
ECHO 終了するには、何かキーを押してください
PAUSE >NUL

