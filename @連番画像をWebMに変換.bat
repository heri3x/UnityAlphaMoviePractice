@SET FFMPEG_EXE=ffmpeg\bin\ffmpeg.exe

@REM -- 動画のビットレート
@SET BITRATE=3500k

@REM -- 連番画像のフレームレート
@SET FRAMERATE=13

@REM -- 自動で代替参照フレーム機能を使う（※透過ムービーでは0を指定）
@SET USE_AUTO_ALT_REF=0

"%FFMPEG_EXE%" -r %FRAMERATE% -i C88unity-chan_animation/A/png/A_%%5d.png -vb %BITRATE% -auto-alt-ref %USE_AUTO_ALT_REF% -c:v libvpx UnityAnimeA.webm
"%FFMPEG_EXE%" -r %FRAMERATE% -i C88unity-chan_animation/B/png/B_%%5d.png -vb %BITRATE% -auto-alt-ref %USE_AUTO_ALT_REF% -c:v libvpx UnityAnimeB.webm


@PAUSE
