REM  ���[�U�[�t�H���_��Vim�p�t�@�C�����쐬����
REM  Vim���ŏ��ɃC���X�g�[�������ꍇ�́A���̃o�b�`�����s����

echo ���[�U�[�t�H���_��Vim�p�t�@�C�����쐬���J�n���܂��B�B

mkdir %USERPROFILE%\_vim\backUp
mkdir %USERPROFILE%\_vim\swp
mkdir %USERPROFILE%\_vim\undo
mkdir %USERPROFILE%\_vim\viminfo

echo �K�v�ȃt�@�C�����R�s�[���Ă��܂��B�B�B
REM  00_Vimrc�̓t�H���_���ƂɃR�s�[����
echo D | xcopy 00_Vimrc\*.* ..\ /d /y /c /s /e /h /r
REM  01_vimfiles�̓t�H���_���ƂɃR�s�[����
echo D | xcopy 01_VimFiles\*.* ..\ /d /y /c /s /e /h /r
copy 10_Plugin\plug.vim ..\vim82\autoload
copy 20_Exe\*.* ..\
copy 30_Git\.gitignore ..\

echo ���[�U�[�t�H���_��Vim�p�t�@�C�����쐬���������܂����B
pause
