# NUnitSample
NUnitのサンプル

# テスト環境構築
## テストプロジェクトの作成（VS2015 Community）
1. [拡張機能と更新プログラム]から [NUnit 3 Test Adapter]と[NUnit VS Template]をインストール
1. ソリューションにテストプロジェクトを作成する．[NUnit3 Unit Test Project]

## テスト実行環境の作成
1. ツール -> NUGetパッケージマネージャー -> パッケージマネージャーコンソール
1. PM> Install-Package NUnit
1. PM> Install-Package NUnit.ConsoleRunner
1. PM> Install-Package OpenCover
1. PM> Install-Package ReportGenerator

## テスト実行レポートの作成
1. プロジェクト添付のCoverageTest.batを実行

