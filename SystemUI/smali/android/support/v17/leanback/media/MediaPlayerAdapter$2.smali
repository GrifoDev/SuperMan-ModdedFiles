.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-boolean v0, v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    :cond_1
    return-void
.end method
