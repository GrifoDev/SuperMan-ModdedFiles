.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method private onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v2, :cond_3

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    goto :goto_0

    :sswitch_0
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_1

    :sswitch_1
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_1

    :sswitch_2
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto :goto_1

    :sswitch_3
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto :goto_1

    :sswitch_4
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto :goto_1

    :sswitch_5
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto :goto_1

    :sswitch_6
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto :goto_1

    :sswitch_7
    const-string/jumbo v2, "MediaSessionCompat"

    const-string/jumbo v3, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_4
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x59 -> :sswitch_6
        0x5a -> :sswitch_5
        0x7e -> :sswitch_0
        0x7f -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    iget-object v5, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    iget-object v6, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    iget-object v7, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    goto :goto_0

    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_0

    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto/16 :goto_0

    :pswitch_11
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/support/v4/media/MediaDescriptionCompat;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    if-eqz v5, :cond_1

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ltz v5, :cond_2

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_18
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetCaptioningEnabled(Z)V

    goto/16 :goto_0

    :pswitch_1b
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRepeatMode(I)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetShuffleModeEnabled(Z)V

    goto/16 :goto_0

    :pswitch_1d
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetShuffleMode(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_18
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_1
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
