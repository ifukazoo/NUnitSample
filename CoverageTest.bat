cd /d %~dp0

@rem MsBuild.exe�փp�X��ʂ�
set path=C:\Windows\Microsoft.NET\Framework64\v4.0.30319%path%

@rem �e�c�[���� �o�[�W����
set NUnitConsole_Ver=3.7.0
set OpenCover_Ver=4.6.519
set ReportGenerator_Ver=2.5.10

@rem �e�c�[���� �C���X�g�[����
set NUnitConsole_Home=packages\NUnit.ConsoleRunner.%NUnitConsole_Ver%\tools
set OpenCover_Home=packages\OpenCover.%OpenCover_Ver%\tools
set ReportGenerator_Home=packages\ReportGenerator.%ReportGenerator_Ver%\tools

@rem �p�X�̐ݒ�
set path=%OpenCover_Home%;%ReportGenerator_Home%;%path%

@rem ���s����e�X�g�̃A�Z���u��
set target_test=NUnitSampleTest.dll

@rem ���s����e�X�g�̃A�Z���u���̊i�[��
set target_dir=NUnitSampleTest\bin\Debug

@rem �J�o���b�W�v���Ώۂ̎w��
set filters=+[NUnitSample]*

@rem �J�o���b�W�v�����ʂ̏o�͐�̎w��
set output_dir=NUnitSampleTest\bin\Debug
set output_file_path=%output_dir%\result.xml
set output_html_path=%output_dir%\html

@rem �v���W�F�N�g�̃r���h
MsBuild.exe

@rem OpenCover�̎��s
OpenCover.Console.exe -register:user -target:"%NUnitConsole_Home%\nunit3-console.exe" -targetargs:%target_test%  -targetdir:%target_dir% -output:%output_file_path% -mergebyhash

@rem ���|�[�g�̐���
ReportGenerator.exe %output_file_path% %output_html_path%
pause
