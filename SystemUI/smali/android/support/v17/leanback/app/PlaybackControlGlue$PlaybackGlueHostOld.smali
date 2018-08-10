.class final Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost;
.source "PlaybackControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaybackGlueHostOld"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$1;
    }
.end annotation


# instance fields
.field mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

.field final mFragment:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

.field mGlue:Landroid/support/v17/leanback/app/PlaybackControlGlue;


# virtual methods
.method public notifyPlaybackRowChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mGlue:Landroid/support/v17/leanback/app/PlaybackControlGlue;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mGlue:Landroid/support/v17/leanback/app/PlaybackControlGlue;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->onRowChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mFragment:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->setFadingEnabled(Z)V

    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mFragment:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mFragment:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$2;-><init>(Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->setEventHandler(Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;)V

    return-void
.end method
