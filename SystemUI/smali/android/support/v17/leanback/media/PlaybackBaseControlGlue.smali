.class public abstract Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackGlue;
.source "PlaybackBaseControlGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnActionClickedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v17/leanback/media/PlayerAdapter;",
        ">",
        "Landroid/support/v17/leanback/media/PlaybackGlue;",
        "Landroid/support/v17/leanback/widget/OnActionClickedListener;",
        "Landroid/view/View$OnKeyListener;"
    }
.end annotation


# instance fields
.field mBuffering:Z

.field mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

.field mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

.field mCover:Landroid/graphics/drawable/Drawable;

.field mErrorCode:I

.field mErrorMessage:Ljava/lang/String;

.field mErrorSet:Z

.field mFadeWhenPlaying:Z

.field mIsPlaying:Z

.field mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field final mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

.field mSubtitle:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field mVideoHeight:I

.field mVideoWidth:I


# direct methods
.method protected static notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method private updateControlsRow()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onMetadataChanged()V

    return-void
.end method


# virtual methods
.method public getArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isPlaying()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final isPrepared()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public abstract onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
.end method

.method onAttachHostCallback()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    iget v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onVideoSizeChanged(II)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onError(ILjava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    :cond_2
    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateDefaultControlsRow()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateDefaultRowPresenter()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onAttachHostCallback()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    return-void
.end method

.method onCreateDefaultControlsRow()V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v1, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    :cond_0
    return-void
.end method

.method onCreateDefaultRowPresenter()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    :cond_0
    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method protected abstract onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.end method

.method protected onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method onDetachHostCallback()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    iput v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onDetachHostCallback()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->onDetachedFromHost()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onDetachedFromHost()V

    return-void
.end method

.method protected onHostStart()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    return-void
.end method

.method protected onHostStop()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    return-void
.end method

.method public abstract onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method

.method onMetadataChanged()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getArt()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    :cond_1
    return-void
.end method

.method protected onPlayCompleted()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPlayCompleted(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayStateChanged()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPreparedStateChanged()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateDuration()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onUpdateBufferedProgress()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->getBufferedPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    :cond_0
    return-void
.end method

.method onUpdateDuration()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method onUpdateProgress()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->play()V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    return-void
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 6

    const-wide/16 v4, -0x1

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2, v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2, v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2, v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setSecondaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->updateControlsRow()V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-void
.end method
