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

    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_0

    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "mediaplayer went away with unhandled events"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    const-string/jumbo v30, "MediaPlayer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unknown message type "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v31, 0x2c7

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-wrap3(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_2
    return-void

    :catch_0
    move-exception v10

    const/16 v30, 0x64

    const/16 v31, 0x1

    const/16 v32, -0x3f2

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_1
    const-string/jumbo v30, "MediaPlayer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "MEDIA_DRM_INFO "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-nez v30, :cond_4

    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "MEDIA_DRM_INFO msg.obj=NULL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v30, v0

    if-eqz v30, :cond_6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer$DrmInfo;->-wrap0(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    monitor-exit v31

    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V

    goto :goto_1

    :catchall_0
    move-exception v30

    monitor-exit v31

    throw v30

    :cond_6
    const-string/jumbo v30, "MediaPlayer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-wrap5(Landroid/media/MediaPlayer;Z)V

    invoke-static {}, Landroid/media/MediaPlayer;->-get0()Z

    move-result v30

    if-eqz v30, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const-string/jumbo v31, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v32, 0xc

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const-string/jumbo v33, "TYPE"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const-string/jumbo v33, "complete"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    const-string/jumbo v33, "URI"

    const/16 v34, 0x2

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    aput-object v33, v32, v34

    const-string/jumbo v33, "ID"

    const/16 v34, 0x4

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x5

    aput-object v33, v32, v34

    const-string/jumbo v33, "PID"

    const/16 v34, 0x6

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get29(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x7

    aput-object v33, v32, v34

    const-string/jumbo v33, "DURATION_MS"

    const/16 v34, 0x8

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x9

    aput-object v33, v32, v34

    const-string/jumbo v33, "IS_VIDEO"

    const/16 v34, 0xa

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0xb

    aput-object v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    :cond_8
    return-void

    :sswitch_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get31(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v27

    if-eqz v27, :cond_9

    invoke-virtual/range {v27 .. v27}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_9
    :goto_2
    :sswitch_4
    return-void

    :catch_1
    move-exception v9

    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "handleMessage MEDIA_STOPPED e : "

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :sswitch_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get31(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v27

    if-eqz v27, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0x7

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    const/16 v30, 0x1

    :goto_3
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v9

    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "handleMessage MEDIA_STARTED or MEDIA_PAUSED e : "

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_a
    const/16 v30, 0x0

    goto :goto_3

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v14, v0, v1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_b
    return-void

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get22(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_c
    :sswitch_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get31(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v27

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_d
    :goto_4
    return-void

    :catch_3
    move-exception v9

    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "handleMessage MEDIA_SKIPPED e : "

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get26(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-eqz v30, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-set5(Landroid/media/MediaPlayer;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Z

    move-result v30

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const-string/jumbo v31, "com.samsung.intent.videoexist"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const-string/jumbo v33, "PID"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get29(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x1

    aput-object v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_f
    return-void

    :sswitch_a
    const-string/jumbo v30, "MediaPlayer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Error ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get18(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, -0x31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, -0x3c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v30

    if-eqz v30, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_15

    const-string/jumbo v31, "MediaPlayer"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v11

    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v15

    if-eqz v15, :cond_12

    xor-int/lit8 v30, v11, 0x1

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-wrap5(Landroid/media/MediaPlayer;Z)V

    return-void

    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, -0x3d

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, -0x40

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    :cond_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, 0x12c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get18(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v11

    goto/16 :goto_5

    :cond_15
    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v11

    goto/16 :goto_5

    :cond_16
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get18(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v30

    if-eqz v30, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get18(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    invoke-interface/range {v30 .. v33}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v11

    goto/16 :goto_5

    :cond_17
    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "error listener is null "

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v9

    const-string/jumbo v30, "MediaPlayer"

    const-string/jumbo v31, "handleMessage e : "

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_1

    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get19(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v18

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    :cond_19
    return-void

    :sswitch_c
    const-string/jumbo v30, "MediaPlayer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Info ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :sswitch_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-wrap3(Landroid/media/MediaPlayer;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :sswitch_e
    const/16 v30, 0x322

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get30(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v30

    if-eqz v30, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get30(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto/16 :goto_6

    :catch_5
    move-exception v10

    const/16 v30, 0x64

    const/16 v31, 0x1

    const/16 v32, -0x3f2

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get31(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v27

    if-eqz v27, :cond_18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v31, 0x2bd

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    const/16 v30, 0x1

    :goto_8
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_6

    :cond_1a
    const/16 v30, 0x0

    goto :goto_8

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get25(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v23

    if-nez v23, :cond_1b

    return-void

    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-nez v30, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    :cond_1c
    :goto_9
    return-void

    :cond_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Parcel;

    new-instance v26, Landroid/media/TimedText;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_9

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v21

    if-nez v21, :cond_1e

    return-void

    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Parcel;

    new-instance v6, Landroid/media/SubtitleData;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v6}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    :cond_1f
    return-void

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v22

    if-nez v22, :cond_20

    return-void

    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v30, v0

    if-eqz v30, :cond_21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Parcel;

    invoke-static/range {v25 .. v25}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v7}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    :cond_21
    return-void

    :sswitch_13
    invoke-static {}, Landroid/media/MediaPlayer;->-get0()Z

    move-result v30

    if-eqz v30, :cond_24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v30, v0

    if-eqz v30, :cond_24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Parcel;

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)I

    move-result v30

    if-nez v30, :cond_23

    const-string/jumbo v30, "start"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v12}, Landroid/media/MediaPlayer;->-set1(Landroid/media/MediaPlayer;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->-set3(Landroid/media/MediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-set0(Landroid/media/MediaPlayer;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const-string/jumbo v31, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v32, 0xc

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const-string/jumbo v33, "TYPE"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const/16 v33, 0x1

    aput-object v28, v32, v33

    const-string/jumbo v33, "URI"

    const/16 v34, 0x2

    aput-object v33, v32, v34

    const/16 v33, 0x3

    aput-object v29, v32, v33

    const-string/jumbo v33, "ID"

    const/16 v34, 0x4

    aput-object v33, v32, v34

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x5

    aput-object v33, v32, v34

    const-string/jumbo v33, "PID"

    const/16 v34, 0x6

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get29(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x7

    aput-object v33, v32, v34

    const-string/jumbo v33, "DURATION_MS"

    const/16 v34, 0x8

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x9

    aput-object v33, v32, v34

    const-string/jumbo v33, "IS_VIDEO"

    const/16 v34, 0xa

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0xb

    aput-object v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get28(Landroid/media/MediaPlayer;)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const-string/jumbo v31, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v32, 0xc

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const-string/jumbo v33, "TYPE"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const-string/jumbo v33, "pause"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    const-string/jumbo v33, "URI"

    const/16 v34, 0x2

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    aput-object v33, v32, v34

    const-string/jumbo v33, "ID"

    const/16 v34, 0x4

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x5

    aput-object v33, v32, v34

    const-string/jumbo v33, "PID"

    const/16 v34, 0x6

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get29(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x7

    aput-object v33, v32, v34

    const-string/jumbo v33, "DURATION_MS"

    const/16 v34, 0x8

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x9

    aput-object v33, v32, v34

    const-string/jumbo v33, "IS_VIDEO"

    const/16 v34, 0xa

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0xb

    aput-object v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    :cond_25
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-set6(Landroid/media/MediaPlayer;I)I

    goto/16 :goto_2

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaPlayer;->-get28(Landroid/media/MediaPlayer;)I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const-string/jumbo v31, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v32, 0xc

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const-string/jumbo v33, "TYPE"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const-string/jumbo v33, "stop"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    const-string/jumbo v33, "URI"

    const/16 v34, 0x2

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    aput-object v33, v32, v34

    const-string/jumbo v33, "ID"

    const/16 v34, 0x4

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x5

    aput-object v33, v32, v34

    const-string/jumbo v33, "PID"

    const/16 v34, 0x6

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get29(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x7

    aput-object v33, v32, v34

    const-string/jumbo v33, "DURATION_MS"

    const/16 v34, 0x8

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x9

    aput-object v33, v32, v34

    const-string/jumbo v33, "IS_VIDEO"

    const/16 v34, 0xa

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0xb

    aput-object v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-static/range {v30 .. v31}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    goto/16 :goto_a

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_3
        0x9 -> :sswitch_8
        0x63 -> :sswitch_10
        0x64 -> :sswitch_a
        0xc8 -> :sswitch_b
        0xc9 -> :sswitch_11
        0xca -> :sswitch_12
        0xd2 -> :sswitch_1
        0x12c -> :sswitch_13
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_c
        0x2bd -> :sswitch_f
        0x2be -> :sswitch_f
        0x322 -> :sswitch_d
        0x323 -> :sswitch_e
    .end sparse-switch
.end method
