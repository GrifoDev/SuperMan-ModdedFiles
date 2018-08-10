.class public Landroid/support/v17/leanback/media/MediaPlayerGlue;
.super Landroid/support/v17/leanback/media/PlaybackControlGlue;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/MediaPlayerGlue$2;,
        Landroid/support/v17/leanback/media/MediaPlayerGlue$3;,
        Landroid/support/v17/leanback/media/MediaPlayerGlue$4;,
        Landroid/support/v17/leanback/media/MediaPlayerGlue$5;,
        Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;
    }
.end annotation


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mCover:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastKeyDownEvent:J

.field private mMediaSourcePath:Ljava/lang/String;

.field private mMediaSourceUri:Landroid/net/Uri;

.field mPlayer:Landroid/media/MediaPlayer;

.field private final mRepeatAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSelectedAction:Landroid/support/v17/leanback/widget/Action;

.field protected final mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

.field protected final mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/media/MediaPlayerGlue;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v17/leanback/media/MediaPlayerGlue;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    return p1
.end method


# virtual methods
.method changeToUnitialized()V
    .locals 4

    iget-boolean v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableProgressUpdating(Z)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue$1;-><init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getUpdatePeriod()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSpeedId()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMediaDuration()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "N/a"

    goto :goto_0
.end method

.method public getMediaTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "N/a"

    goto :goto_0
.end method

.method public getSupportedActions()J
    .locals 2

    const-wide/16 v0, 0xe0

    return-wide v0
.end method

.method public hasValidMedia()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isMediaPlaying()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    return v0
.end method

.method public isReadyForPlayback()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    return v0
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onActionClicked(Landroid/support/v17/leanback/widget/Action;)V

    instance-of v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->nextIndex()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onMetadataChanged()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->getIndex()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->getIndex()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    goto :goto_0
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    instance-of v0, p1, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;-><init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V

    invoke-interface {p1, v0}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method protected onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRepeatAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->reset()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->release()V

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onDetachedFromHost()V

    return-void
.end method

.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 1

    instance-of v0, p2, Landroid/support/v17/leanback/widget/Action;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/support/v17/leanback/widget/Action;

    iput-object p2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    goto :goto_0
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    instance-of v0, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-nez v0, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    instance-of v0, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result v2

    add-int/lit16 v1, v2, 0x2710

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    instance-of v2, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result v2

    add-int/lit16 v1, v2, -0x2710

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getMediaDuration()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getMediaDuration()I

    move-result v1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->seekTo(I)V

    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onStateChanged()V

    :cond_0
    return-void
.end method

.method public play(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onMetadataChanged()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onStateChanged()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->updateProgress()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->changeToUnitialized()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->changeToUnitialized()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method protected seekTo(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method
