.class public Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost;
.source "PlaybackSupportFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/PlaybackSeekUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;
    }
.end annotation


# instance fields
.field private final mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

.field final mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackSupportFragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    return-object v0
.end method

.method public constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    return-void
.end method


# virtual methods
.method public getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->hideControlsOverlay(Z)V

    return-void
.end method

.method public notifyPlaybackRowChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->notifyPlaybackRowChanged()V

    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setControlsOverlayAutoHideEnabled(Z)V

    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$2;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    goto :goto_0
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    return-void
.end method
