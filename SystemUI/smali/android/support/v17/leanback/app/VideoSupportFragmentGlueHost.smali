.class public Landroid/support/v17/leanback/app/VideoSupportFragmentGlueHost;
.super Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;
.source "VideoSupportFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;


# instance fields
.field private final mFragment:Landroid/support/v17/leanback/app/VideoSupportFragment;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/VideoSupportFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object p1, p0, Landroid/support/v17/leanback/app/VideoSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/VideoSupportFragment;

    return-void
.end method


# virtual methods
.method public setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/VideoSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/VideoSupportFragment;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
