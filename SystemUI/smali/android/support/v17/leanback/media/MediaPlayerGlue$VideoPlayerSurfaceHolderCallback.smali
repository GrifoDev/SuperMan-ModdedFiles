.class Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoPlayerSurfaceHolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method
