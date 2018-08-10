.class public abstract Landroid/support/v17/leanback/app/PlaybackControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackControlGlue;
.source "PlaybackControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;,
        Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mExternalOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;


# virtual methods
.method protected createPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->createPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue;->mExternalOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public final next()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->skipToNext()V

    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    instance-of v0, p1, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    iput-object p0, p1, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mGlue:Landroid/support/v17/leanback/app/PlaybackControlGlue;

    :cond_0
    return-void
.end method

.method protected onCreateControlsRowAndPresenter()V
    .locals 0

    return-void
.end method

.method protected onRowChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->pausePlayback()V

    return-void
.end method

.method protected pausePlayback()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final play(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->startPlayback(I)V

    return-void
.end method

.method public final previous()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->skipToPrevious()V

    return-void
.end method

.method protected skipToNext()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected skipToPrevious()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected startPlayback(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
