.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;
    }
.end annotation


# instance fields
.field private mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

.field final mCallbackObj:Ljava/lang/Object;

.field private mMediaPlayPauseKeyHandled:Z

.field private mSessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->handleMediaPlayPauseKeySingleTapIfUnhandled()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi23;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleMediaPlayPauseKeySingleTapIfUnhandled()V
    .locals 12

    const-wide/16 v10, 0x0

    iget-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPauseKeyHandled:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPauseKeyHandled:Z

    invoke-interface {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v4

    if-nez v4, :cond_3

    const-wide/16 v6, 0x0

    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    const/4 v3, 0x1

    :goto_1
    const-wide/16 v8, 0x204

    and-long/2addr v8, v6

    cmp-long v5, v8, v10

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    :goto_2
    const-wide/16 v8, 0x202

    and-long/2addr v8, v6

    cmp-long v5, v8, v10

    if-eqz v5, :cond_7

    const/4 v0, 0x1

    :goto_3
    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    :cond_2
    :goto_4
    return-void

    :cond_3
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v6

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_4
.end method


# virtual methods
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 0

    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFastForward()V
    .locals 0

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x1

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    if-eqz v0, :cond_0

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    if-nez v6, :cond_1

    :cond_0
    return v7

    :cond_1
    const-string/jumbo v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    return v7

    :cond_3
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    return v7

    :sswitch_0
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->removeMessages(I)V

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ne v6, v10, :cond_4

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->handleMediaPlayPauseKeySingleTapIfUnhandled()V

    :cond_4
    :goto_0
    return v10

    :cond_5
    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->removeMessages(I)V

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    if-nez v3, :cond_7

    const-wide/16 v4, 0x0

    :goto_1
    const-wide/16 v6, 0x20

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    :cond_6
    iput-boolean v10, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPauseKeyHandled:Z

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    goto :goto_1

    :cond_8
    iput-boolean v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPauseKeyHandled:Z

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v10, v8, v9}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPlay()V
    .locals 0

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepare()V
    .locals 0

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    return-void
.end method

.method public onRewind()V
    .locals 0

    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 0

    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 0

    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 0

    return-void
.end method

.method public onSetShuffleModeEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
