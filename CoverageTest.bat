cd /d %~dp0

@rem MsBuild.exeへパスを通す
set path=C:\Windows\Microsoft.NET\Framework64\v4.0.30319%path%

@rem 各ツールの バージョン
set NUnitConsole_Ver=3.7.0
set OpenCover_Ver=4.6.519
set ReportGenerator_Ver=2.5.10

@rem 各ツールの インストール先
set NUnitConsole_Home=packages\NUnit.ConsoleRunner.%NUnitConsole_Ver%\tools
set OpenCover_Home=packages\OpenCover.%OpenCover_Ver%\tools
set ReportGenerator_Home=packages\ReportGenerator.%ReportGenerator_Ver%\tools

@rem パスの設定
set path=%OpenCover_Home%;%ReportGenerator_Home%;%path%

@rem 実行するテストのアセンブリ
set target_test=NUnitSampleTest.dll

@rem 実行するテストのアセンブリの格納先
set target_dir=NUnitSampleTest\bin\Debug

@rem カバレッジ計測対象の指定
set filters=+[NUnitSample]*

@rem カバレッジ計測結果の出力先の指定
set output_dir=NUnitSampleTest\bin\Debug
set output_file_path=%output_dir%\result.xml
set output_html_path=%output_dir%\html

@rem プロジェクトのビルド
MsBuild.exe

@rem OpenCoverの実行
OpenCover.Console.exe -register:user -target:"%NUnitConsole_Home%\nunit3-console.exe" -targetargs:%target_test%  -targetdir:%target_dir% -output:%output_file_path% -mergebyhash

@rem レポートの生成
ReportGenerator.exe %output_file_path% %output_html_path%
pause
