.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3761
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 3762
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3763
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3761
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_0

    .line 3769
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "mediaplayer went away with unhandled events"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    return-void

    .line 3772
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_0

    .line 4085
    const-string/jumbo v28, "MediaPlayer"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Unknown message type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    return-void

    .line 3775
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v29, 0x2c7

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 3779
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3791
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v17

    .line 3792
    .local v17, "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    if-eqz v17, :cond_2

    .line 3793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 3794
    :cond_2
    return-void

    .line 3780
    .end local v17    # "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    :catch_0
    move-exception v9

    .line 3785
    .local v9, "e":Ljava/lang/RuntimeException;
    const/16 v28, 0x64

    const/16 v29, 0x1

    const/16 v30, -0x3f2

    const/16 v31, 0x0

    .line 3784
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 3786
    .local v12, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3798
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "msg2":Landroid/os/Message;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v14

    .line 3799
    .local v14, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v14, :cond_3

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3802
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-wrap2(Landroid/media/MediaPlayer;Z)V

    .line 3804
    invoke-static {}, Landroid/media/MediaPlayer;->-get0()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v30, 0xa

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "TYPE"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    const-string/jumbo v31, "complete"

    const/16 v32, 0x1

    aput-object v31, v30, v32

    const-string/jumbo v31, "URI"

    const/16 v32, 0x2

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    aput-object v31, v30, v32

    const-string/jumbo v31, "ID"

    const/16 v32, 0x4

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x5

    aput-object v31, v30, v32

    const-string/jumbo v31, "PID"

    const/16 v32, 0x6

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get22(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x7

    aput-object v31, v30, v32

    const-string/jumbo v31, "DURATION_MS"

    const/16 v32, 0x8

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x9

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    .line 3812
    :cond_4
    return-void

    .line 3824
    .end local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :sswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3825
    .local v25, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_5

    .line 3826
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3767
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_5
    :goto_1
    :sswitch_3
    return-void

    .line 3828
    :catch_1
    move-exception v8

    .line 3829
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "handleMessage MEDIA_STOPPED e : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3845
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :sswitch_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3846
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_5

    .line 3847
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/16 v28, 0x1

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 3849
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :catch_2
    move-exception v8

    .line 3850
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "handleMessage MEDIA_STARTED or MEDIA_PAUSED e : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3847
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_6
    const/16 v28, 0x0

    goto :goto_2

    .line 3856
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v13

    .line 3857
    .local v13, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v13, :cond_7

    .line 3858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v13, v0, v1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 3859
    :cond_7
    return-void

    .line 3862
    .end local v13    # "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v18

    .line 3863
    .local v18, "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    if-eqz v18, :cond_8

    .line 3864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3878
    .end local v18    # "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    :cond_8
    :sswitch_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3879
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_9

    .line 3880
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3886
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_9
    :goto_3
    return-void

    .line 3882
    :catch_3
    move-exception v8

    .line 3883
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "handleMessage MEDIA_SKIPPED e : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3889
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get19(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v22

    .line 3890
    .local v22, "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    if-eqz v22, :cond_a

    .line 3892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 3891
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 3895
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set4(Landroid/media/MediaPlayer;Z)Z

    .line 3898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 3900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.intent.videoexist"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "PID"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get22(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x1

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3904
    :cond_b
    return-void

    .line 3907
    .end local v22    # "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    :sswitch_9
    const-string/jumbo v28, "MediaPlayer"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Error ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    const/4 v10, 0x0

    .line 3909
    .local v10, "error_was_handled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v15

    .line 3910
    .local v15, "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    if-eqz v15, :cond_d

    .line 3914
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x31

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 3915
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 3918
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v28

    if-eqz v28, :cond_10

    .line 3920
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    .line 3921
    const-string/jumbo v29, "MediaPlayer"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v10

    .line 3959
    .end local v10    # "error_was_handled":Z
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v14

    .line 3960
    .restart local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v14, :cond_e

    if-eqz v10, :cond_14

    .line 3963
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-wrap2(Landroid/media/MediaPlayer;Z)V

    .line 3964
    return-void

    .line 3916
    .end local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    .restart local v10    # "error_was_handled":Z
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3d

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 3917
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x40

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 3930
    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, 0x12c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 3931
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    invoke-interface/range {v28 .. v31}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v10

    .local v10, "error_was_handled":Z
    goto :goto_4

    .line 3925
    .local v10, "error_was_handled":Z
    :cond_11
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v15, v0, v1, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v10

    .local v10, "error_was_handled":Z
    goto/16 :goto_4

    .line 3942
    .local v10, "error_was_handled":Z
    :cond_12
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v28

    if-eqz v28, :cond_13

    .line 3943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    invoke-interface/range {v28 .. v31}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v10

    .local v10, "error_was_handled":Z
    goto/16 :goto_4

    .line 3945
    .local v10, "error_was_handled":Z
    :cond_13
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "error listener is null "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 3948
    :catch_4
    move-exception v8

    .line 3949
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "handleMessage e : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 3961
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "error_was_handled":Z
    .restart local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto/16 :goto_5

    .line 3967
    .end local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    .end local v15    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_1

    .line 3997
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v16

    .line 3998
    .local v16, "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    if-eqz v16, :cond_16

    .line 3999
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 4002
    :cond_16
    return-void

    .line 3969
    .end local v16    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :sswitch_b
    const-string/jumbo v28, "MediaPlayer"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Info ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3973
    :sswitch_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3982
    :goto_7
    :sswitch_d
    const/16 v28, 0x322

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3984
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v28

    if-eqz v28, :cond_15

    .line 3985
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto/16 :goto_6

    .line 3974
    :catch_5
    move-exception v9

    .line 3976
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    const/16 v28, 0x64

    const/16 v29, 0x1

    const/16 v30, -0x3f2

    const/16 v31, 0x0

    .line 3975
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 3977
    .restart local v12    # "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 3990
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "msg2":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3991
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_15

    .line 3992
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v29, 0x2bd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    const/16 v28, 0x1

    :goto_8
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_6

    :cond_17
    const/16 v28, 0x0

    goto :goto_8

    .line 4004
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get18(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v21

    .line 4005
    .local v21, "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    if-nez v21, :cond_18

    .line 4006
    return-void

    .line 4007
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    if-nez v28, :cond_1a

    .line 4008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 4017
    :cond_19
    :goto_9
    return-void

    .line 4010
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v28, v0

    if-eqz v28, :cond_19

    .line 4011
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 4012
    .local v23, "parcel":Landroid/os/Parcel;
    new-instance v24, Landroid/media/TimedText;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 4013
    .local v24, "text":Landroid/media/TimedText;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 4014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_9

    .line 4020
    .end local v21    # "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    .end local v23    # "parcel":Landroid/os/Parcel;
    .end local v24    # "text":Landroid/media/TimedText;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v19

    .line 4021
    .local v19, "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    if-nez v19, :cond_1b

    .line 4022
    return-void

    .line 4024
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v28, v0

    if-eqz v28, :cond_1c

    .line 4025
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 4026
    .restart local v23    # "parcel":Landroid/os/Parcel;
    new-instance v6, Landroid/media/SubtitleData;

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 4027
    .local v6, "data":Landroid/media/SubtitleData;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 4028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v6}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .line 4030
    .end local v6    # "data":Landroid/media/SubtitleData;
    .end local v23    # "parcel":Landroid/os/Parcel;
    :cond_1c
    return-void

    .line 4034
    .end local v19    # "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get17(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v20

    .line 4035
    .local v20, "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    if-nez v20, :cond_1d

    .line 4036
    return-void

    .line 4038
    :cond_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v28, v0

    if-eqz v28, :cond_1e

    .line 4039
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 4040
    .restart local v23    # "parcel":Landroid/os/Parcel;
    invoke-static/range {v23 .. v23}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v7

    .line 4041
    .local v7, "data":Landroid/media/TimedMetaData;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 4042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v7}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .line 4044
    .end local v7    # "data":Landroid/media/TimedMetaData;
    .end local v23    # "parcel":Landroid/os/Parcel;
    :cond_1e
    return-void

    .line 4050
    .end local v20    # "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    :sswitch_12
    invoke-static {}, Landroid/media/MediaPlayer;->-get0()Z

    move-result v28

    if-eqz v28, :cond_21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v28, v0

    if-eqz v28, :cond_21

    .line 4052
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 4053
    .restart local v23    # "parcel":Landroid/os/Parcel;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 4054
    .local v26, "type":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 4055
    .local v27, "uri":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4057
    .local v11, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)I

    move-result v28

    if-nez v28, :cond_20

    .line 4058
    const-string/jumbo v28, "start"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_1f

    .line 4059
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v11}, Landroid/media/MediaPlayer;->-set1(Landroid/media/MediaPlayer;I)I

    .line 4060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->-set3(Landroid/media/MediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 4061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set0(Landroid/media/MediaPlayer;I)I

    .line 4062
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    .line 4064
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v30, 0xa

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "TYPE"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    const/16 v31, 0x1

    aput-object v26, v30, v31

    const-string/jumbo v31, "URI"

    const/16 v32, 0x2

    aput-object v31, v30, v32

    const/16 v31, 0x3

    aput-object v27, v30, v31

    const-string/jumbo v31, "ID"

    const/16 v32, 0x4

    aput-object v31, v30, v32

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x5

    aput-object v31, v30, v32

    const-string/jumbo v31, "PID"

    const/16 v32, 0x6

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get22(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x7

    aput-object v31, v30, v32

    const-string/jumbo v31, "DURATION_MS"

    const/16 v32, 0x8

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x9

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4067
    :cond_20
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 4070
    .end local v11    # "id":I
    .end local v23    # "parcel":Landroid/os/Parcel;
    .end local v26    # "type":Ljava/lang/String;
    .end local v27    # "uri":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    .line 4071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v30, 0xa

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "TYPE"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    const-string/jumbo v31, "pause"

    const/16 v32, 0x1

    aput-object v31, v30, v32

    const-string/jumbo v31, "URI"

    const/16 v32, 0x2

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    aput-object v31, v30, v32

    const-string/jumbo v31, "ID"

    const/16 v32, 0x4

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x5

    aput-object v31, v30, v32

    const-string/jumbo v31, "PID"

    const/16 v32, 0x6

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get22(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x7

    aput-object v31, v30, v32

    const-string/jumbo v31, "DURATION_MS"

    const/16 v32, 0x8

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x9

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    .line 4080
    :cond_22
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set5(Landroid/media/MediaPlayer;I)I

    goto/16 :goto_1

    .line 4075
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 4076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v30, 0xa

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "TYPE"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    const-string/jumbo v31, "stop"

    const/16 v32, 0x1

    aput-object v31, v30, v32

    const-string/jumbo v31, "URI"

    const/16 v32, 0x2

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    aput-object v31, v30, v32

    const-string/jumbo v31, "ID"

    const/16 v32, 0x4

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x5

    aput-object v31, v30, v32

    const-string/jumbo v31, "PID"

    const/16 v32, 0x6

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get22(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x7

    aput-object v31, v30, v32

    const-string/jumbo v31, "DURATION_MS"

    const/16 v32, 0x8

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x9

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    goto/16 :goto_a

    .line 3772
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0x63 -> :sswitch_f
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0x12c -> :sswitch_12
    .end sparse-switch

    .line 3967
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
