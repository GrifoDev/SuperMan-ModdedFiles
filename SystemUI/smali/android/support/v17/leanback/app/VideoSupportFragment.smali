.class public Landroid/support/v17/leanback/app/VideoSupportFragment;
.super Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.source "VideoSupportFragment.java"


# instance fields
.field mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

.field mState:I

.field mVideoSurface:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mState:I

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VideoSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_video_surface:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/app/VideoSupportFragment$1;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/VideoSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/VideoSupportFragment;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/VideoSupportFragment;->setBackgroundType(I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mState:I

    invoke-super {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onDestroyView()V

    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VideoSupportFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VideoSupportFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int v3, v2, p2

    mul-int v4, p1, v1

    if-le v3, v4, :cond_0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int v3, v1, p1

    div-int/2addr v3, p2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int v3, v2, p2

    div-int/2addr v3, p1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
