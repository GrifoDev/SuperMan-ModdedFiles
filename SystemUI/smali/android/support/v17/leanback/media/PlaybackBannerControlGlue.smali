.class public Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.source "PlaybackBannerControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$ACTION_;,
        Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$SPEED;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v17/leanback/media/PlayerAdapter;",
        ">",
        "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

.field private final mFastForwardSpeeds:[I

.field private mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field private mPlaybackSpeed:I

.field private mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

.field private final mRewindSpeeds:[I

.field private mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

.field private mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

.field private mStartPosition:J

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->TAG:Ljava/lang/String;

    return-void
.end method

.method private fakePause()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->pause()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method private getMaxForwardSpeedId()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getMaxRewindSpeedId()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private updatePlaybackState(Z)V
    .locals 4

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdateProgress()V

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    :goto_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFadeWhenPlaying:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v2, :cond_2

    if-nez p1, :cond_8

    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->PLAY:I

    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->getIndex()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setIndex(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    iget v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v0, v2, 0x1

    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getIndex()I

    move-result v2

    if-eq v2, v0, :cond_4

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setIndex(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    iget v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v3, -0xa

    if-gt v2, v3, :cond_5

    iget v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v0, v2, 0x1

    :cond_5
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getIndex()I

    move-result v2

    if-eq v2, v0, :cond_6

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setIndex(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->PAUSE:I

    goto :goto_1
.end method


# virtual methods
.method dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .locals 7

    const/16 v6, 0x55

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-ne p1, v3, :cond_b

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_5

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_7

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eqz v1, :cond_9

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-ne v3, v5, :cond_a

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    const/4 v2, 0x1

    :cond_4
    :goto_3
    return v2

    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-nez v3, :cond_2

    :cond_a
    if-eqz v1, :cond_3

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eq v3, v5, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->play()V

    goto :goto_2

    :cond_b
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-ne p1, v3, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->next()V

    const/4 v2, 0x1

    goto :goto_3

    :cond_c
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-ne p1, v3, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->previous()V

    const/4 v2, 0x1

    goto :goto_3

    :cond_d
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-ne p1, v3, :cond_f

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getMaxForwardSpeedId()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->fakePause()V

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    packed-switch v3, :pswitch_data_0

    const/16 v3, 0xa

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    :goto_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    :cond_e
    const/4 v2, 0x1

    goto :goto_3

    :pswitch_0
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    goto :goto_4

    :cond_f
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v3

    if-eqz v3, :cond_10

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getMaxRewindSpeedId()I

    move-result v4

    neg-int v4, v4

    if-le v3, v4, :cond_10

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->fakePause()V

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    packed-switch v3, :pswitch_data_1

    const/16 v3, -0xa

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    :goto_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_1
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xd
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentPosition()J
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v4

    return-wide v4

    :cond_1
    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_3

    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v0, v4, -0xa

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getFastForwardSpeeds()[I

    move-result-object v4

    aget v1, v4, v0

    :goto_0
    iget-wide v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    sub-long/2addr v6, v8

    int-to-long v8, v1

    mul-long/2addr v6, v8

    add-long v2, v4, v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getDuration()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    iput v10, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v4, v2, v3}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    iput-wide v12, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    :cond_2
    :goto_1
    return-wide v2

    :cond_3
    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v5, -0xa

    if-gt v4, v5, :cond_4

    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    neg-int v4, v4

    add-int/lit8 v0, v4, -0xa

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getRewindSpeeds()[I

    move-result-object v4

    aget v4, v4, v0

    neg-int v1, v4

    goto :goto_0

    :cond_4
    const-wide/16 v4, -0x1

    return-wide v4

    :cond_5
    cmp-long v4, v2, v12

    if-gez v4, :cond_2

    iput v10, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const-wide/16 v2, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v4, v2, v3}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    iput-wide v12, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    goto :goto_1
.end method

.method public getFastForwardSpeeds()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    return-object v0
.end method

.method public getRewindSpeeds()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    return-object v0
.end method

.method public getSupportedActions()J
    .locals 2

    const-wide/16 v0, 0x40

    return-wide v0
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 14

    const-wide/16 v12, 0x40

    const-wide/16 v10, 0x20

    const-wide/16 v8, 0x10

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getSupportedActions()J

    move-result-wide v0

    and-long v2, v0, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-nez v2, :cond_5

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    and-long v2, v0, v10

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-nez v2, :cond_6

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    and-long v2, v0, v12

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v2, :cond_7

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-nez v2, :cond_8

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_3
    :goto_3
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-nez v2, :cond_9

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    and-long v2, v0, v8

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    goto/16 :goto_0

    :cond_6
    and-long v2, v0, v10

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    goto/16 :goto_1

    :cond_7
    and-long v2, v0, v12

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    goto :goto_2

    :cond_8
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    goto :goto_3

    :cond_9
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    goto :goto_4
.end method

.method protected onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;)V

    new-instance v1, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;-><init>(Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;Landroid/support/v17/leanback/widget/Presenter;)V

    return-object v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch p2, :sswitch_data_0

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v5, v2, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v6, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1, p3}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    :cond_1
    return v3

    :sswitch_0
    iget v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    iget v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v6, -0xa

    if-gt v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->play()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    const/4 v5, 0x4

    if-eq p2, v5, :cond_2

    const/16 v5, 0x6f

    if-ne p2, v5, :cond_5

    :cond_2
    :goto_1
    return v3

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    return v4

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPlayCompleted()V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method protected onPlayStateChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void
.end method

.method onUpdatePlaybackState()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->updatePlaybackState(Z)V

    return-void
.end method

.method onUpdatePlaybackStatusAfterUserAction()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->updatePlaybackState(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->pause()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method public play()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    iput-boolean v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    iput v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    iget-wide v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->play()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    goto :goto_0
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method
