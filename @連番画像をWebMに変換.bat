@SET FFMPEG_EXE=ffmpeg\bin\ffmpeg.exe

@REM -- ����̃r�b�g���[�g
@SET BITRATE=3500k

@REM -- �A�ԉ摜�̃t���[�����[�g
@SET FRAMERATE=13

@REM -- �����ő�֎Q�ƃt���[���@�\���g���i�����߃��[�r�[�ł�0���w��j
@SET USE_AUTO_ALT_REF=0

"%FFMPEG_EXE%" -r %FRAMERATE% -i C88unity-chan_animation/A/png/A_%%5d.png -vb %BITRATE% -auto-alt-ref %USE_AUTO_ALT_REF% -c:v libvpx UnityAnimeA.webm
"%FFMPEG_EXE%" -r %FRAMERATE% -i C88unity-chan_animation/B/png/B_%%5d.png -vb %BITRATE% -auto-alt-ref %USE_AUTO_ALT_REF% -c:v libvpx UnityAnimeB.webm


@PAUSE
