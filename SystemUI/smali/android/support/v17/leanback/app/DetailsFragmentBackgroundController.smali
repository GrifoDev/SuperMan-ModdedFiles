.class public Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;
.super Ljava/lang/Object;
.source "DetailsFragmentBackgroundController.java"


# instance fields
.field mCanUseHost:Z

.field final mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

.field mInitialControlVisible:Z

.field private mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

.field mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

.field mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# virtual methods
.method public canNavigateToVideoFragment()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->onCreateGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->showControlsOverlay(Z)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->hideControlsOverlay(Z)V

    goto :goto_0
.end method

.method disableVideoParallax()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->stopParallax()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->isVideoVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final findOrCreateVideoFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onCreateGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;
    .locals 2

    new-instance v1, Landroid/support/v17/leanback/app/VideoFragmentGlueHost;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/VideoFragment;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/app/VideoFragmentGlueHost;-><init>(Landroid/support/v17/leanback/app/VideoFragment;)V

    return-object v1
.end method

.method public onCreateVideoFragment()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/app/VideoFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/VideoFragment;-><init>()V

    return-object v0
.end method

.method onStart()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->createGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->play()V

    :cond_1
    return-void
.end method

.method onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->pause()V

    :cond_0
    return-void
.end method

.method switchToVideoBeforeCreate()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0, v1, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    return-void
.end method
